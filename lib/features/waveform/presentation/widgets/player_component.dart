import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/widget/base_stateless_widget.dart';

class PlayerComponent extends BaseStatelessWidget {
  const PlayerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: const SizedBox(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      child: Icon(Icons.skip_previous)),
                ),
              ),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {},
                  child: const SizedBox(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    child: Icon(
                      Icons.play_arrow,
                      size: 64,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: const SizedBox(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    child: Icon(Icons.skip_next),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: const SizedBox(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      child: Icon(Icons.volume_down)),
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Slider(
                      value: 50,
                      min: 1,
                      max: 100,
                      divisions: 100,
                      activeColor: Theme.of(context).primaryColor,
                      inactiveColor: Theme.of(context).disabledColor,
                      label: '50',
                      onChanged: (double newValue) {},
                      semanticFormatterCallback: (double newValue) {
                        return '${newValue.round()}';
                      })),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: const SizedBox(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    child: Icon(Icons.volume_up),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: (){},
                child: const SizedBox(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: Icon(Icons.lyrics),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: (){},
                child: const SizedBox(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: Icon(Icons.share),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: (){},
                child: const SizedBox(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: Icon(Icons.featured_play_list),
                ),
              ),
            ),
          ],
        )),
      ],
    );
  }
}
