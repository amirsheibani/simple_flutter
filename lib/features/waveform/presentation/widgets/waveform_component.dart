import 'package:flutter/material.dart';
import 'package:flutter_audio_waveforms/flutter_audio_waveforms.dart';
import 'package:simple/core/base/presentation/widget/base_stateful_widget.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:just_waveform/just_waveform.dart';

class WaveformComponent extends BaseStateFulWidget {
  const WaveformComponent({Key? key}) : super(key: key);

  @override
  BaseState<WaveformComponent> createState() => _WaveformComponentState();
}

class _WaveformComponentState extends BaseState<WaveformComponent> {
  final progressStream = BehaviorSubject<WaveformProgress>();

  Future<void> _init() async {
    final audioFile =
        File(p.join((await getTemporaryDirectory()).path, 'waveform.mp3'));
    try {
      await audioFile.writeAsBytes(
          (await rootBundle.load('assets/audio/waveform.mp3'))
              .buffer
              .asUint8List());
      final waveFile =
          File(p.join((await getTemporaryDirectory()).path, 'waveform.wave'));
      JustWaveform.extract(
        audioInFile: audioFile,
        waveOutFile: waveFile,
        zoom: const WaveformZoom.pixelsPerSecond(100),
      ).listen(progressStream.add, onError: progressStream.addError);
    } catch (e) {
      progressStream.addError(e);
    }
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      height: double.maxFinite,
      padding: const EdgeInsets.all(16.0),
      width: double.maxFinite,
      child: StreamBuilder<WaveformProgress>(
        stream: progressStream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
            );
          }
          final progress = snapshot.data?.progress ?? 0.0;
          final waveform = snapshot.data?.waveform;
          if (waveform == null) {
            return Center(
              child: Text(
                '${(100 * progress).toInt()}%',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            );
          }
          return LayoutBuilder(
            builder: (context, constraint) {
              return Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey.shade900
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RectangleWaveform(
                      maxDuration: waveform.duration,
                      elapsedDuration: const Duration(milliseconds: 500),
                      samples: waveform.data.map((e) => e.toDouble()).toList(),
                      height: (constraint.maxHeight - 24) / 3,
                      width: (constraint.maxWidth - 24),
                      borderWidth: 0.05,
                      absolute: true,
                      inactiveBorderColor: const Color(0xFFEBEBEB),
                      inactiveColor: const Color(0xFFEBEBEB),
                      // activeBorderColor: const Color(0xFFEBEBEB),
                      // inactiveGradient: const LinearGradient(
                      //   begin: Alignment.bottomCenter,
                      //   end: Alignment.topCenter,
                      //   colors: [
                      //     Color(0xFF747373),
                      //     Color(0xffffffff),
                      //   ],
                      //   stops: [0, 0.3],
                      // ),
                      activeGradient: const LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xFFFF3701),
                          Color(0xFFFF6d00),
                        ],
                        stops: [0, 0.1],
                      ),
                    ),
                    RectangleWaveform(
                      maxDuration: waveform.duration,
                      elapsedDuration: const Duration(milliseconds: 500),
                      samples: waveform.data.map((e) => e.toDouble()).toList(),
                      height: (constraint.maxHeight - 24) / 6,
                      width: (constraint.maxWidth - 24),
                      borderWidth: 0.3,
                      absolute: true,
                      inactiveBorderColor: Colors.transparent,
                      inactiveColor: Colors.white.withOpacity(0.6),
                      activeBorderColor: const Color(0xFFFF6d00),
                      activeColor: Colors.transparent,
                      activeGradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xFFFF3701).withOpacity(0.6),
                          const Color(0xFFFF6d00).withOpacity(0.6),
                        ],
                        stops: const [0, 0.3],
                      ),
                      invert: true,
                    ),
                  ],
                ),
              );
            },
          );
          // AudioWaveformWidget(
          //   waveform: waveform,
          //   start: Duration.zero,
          //   duration: waveform.duration,
          //   scale: 2,
          //   strokeWidth: 1,
          //   waveColor: Colors.redAccent,
          // );
        },
      ),
    );
  }
}
