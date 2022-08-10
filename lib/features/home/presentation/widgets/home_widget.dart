import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple/core/base/presentation/widget/base_stateless_widget.dart';
import 'package:simple/core/base/presentation/widget/custom_consumer.dart';
import 'package:simple/features/home/presentation/manager/test_provider/increment_provider.dart';

class HomeWidget extends BaseStatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomConsumer<IncrementProvider>(
            listener: (context, provider) {
              print(provider.state);
            },
            whenBuild: (provider){
              return provider.state.whenOrNull(
                loading: () => true,
              ) ?? false;
            },
            builder: (context, testProvider, child) {
              return testProvider.state.whenOrNull(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                success: (index) => Center(
                  child: Text(
                    '$index',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ) ??
                  const SizedBox();
            },
          ),
        ),
        Expanded(
          child: Center(
            child: ElevatedButton(onPressed: (){
              context.read<IncrementProvider>().changeIndex();
            }, child: Text('increment',style: Theme.of(context).textTheme.labelLarge,)),
          ),
        )
      ],
    );
  }
}
