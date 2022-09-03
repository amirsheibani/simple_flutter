import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/widget/base_stateless_widget.dart';
import 'package:simple/features/waveform/presentation/widgets/player_component.dart';
import 'package:simple/features/waveform/presentation/widgets/waveform_component.dart';

class PlayerWidget extends BaseStatelessWidget {
  const PlayerWidget({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Column(
      children: const [
        Expanded(flex: 2, child: Center(child: WaveformComponent())),
        Expanded(child: PlayerComponent()),
      ],
    );
  }
}
