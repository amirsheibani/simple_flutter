import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple/core/base/presentation/widget/base_stateless_widget.dart';
import 'package:simple/core/base/presentation/widget/base_widget_mixin.dart';
import 'package:simple/core/base/presentation/widget/custom_consumer.dart';
import 'package:simple/core/di/base/di_setup.dart';
import 'package:simple/features/myip/presentation/manager/provider/my_ip_provider.dart';
import 'package:simple/generated/l10n.dart';

class MyIpWithProviderWidget extends BaseStatelessWidget {
  const MyIpWithProviderWidget({Key? key}) : super(key: key);

  @override
  List setProviders(BuildContext context) {
    return [
      ChangeNotifierProvider(create: (context) {
        final provider = getIt<MyIpPageProvider>();
        provider.callApi();
        return provider;
      }),
    ];
  }

  @override
  Widget body(BuildContext context) {
    return Center(
      child: CustomConsumer<MyIpPageProvider>(
        listener: (context, myIpProvider){
          myIpProvider.state.whenOrNull(
            failed: (message){
              showSnackBarMessage(context,snackBarType: SnackBarType.error,message: message ?? '');
            }
          );
        },
        builder: (context, myIpProvider, child) {
          return myIpProvider.state.whenOrNull(
            loading: (){
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            success: (data){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).provider,style: Theme.of(context).textTheme.labelMedium,),
                  Text(data?.ip ?? '',style: Theme.of(context).textTheme.labelSmall,),
                  Text(data?.country ?? '',style: Theme.of(context).textTheme.labelSmall,),
                  Text(data?.cc ?? '',style: Theme.of(context).textTheme.labelSmall,),
                ],
              );
            }
          ) ?? const SizedBox();
        },
      ),
    );
  }
}
