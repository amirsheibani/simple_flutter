import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/page/base_stateless_page.dart';
import 'package:simple/features/waveform/presentation/widgets/player_widget.dart';

class PlayerPage extends BaseStatelessPage {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return const PlayerWidget();
  }
}
