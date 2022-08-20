import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple/core/base/presentation/widget/base_stateless_widget.dart';
import 'package:simple/core/base/presentation/widget/base_widget_mixin.dart';
import 'package:simple/core/di/base/di_setup.dart';
import 'package:simple/features/myip/presentation/manager/bloc/my_ip_bloc.dart';
import 'package:simple/features/myip/presentation/manager/bloc/my_ip_bloc_event.dart';
import 'package:simple/features/myip/presentation/manager/bloc/my_ip_bloc_state.dart';
import 'package:simple/generated/l10n.dart';

class MyIpWithBlocWidget extends BaseStatelessWidget {
  const MyIpWithBlocWidget({Key? key}) : super(key: key);

  @override
  List setProviders(BuildContext context) {
    return [
      BlocProvider(create: (context) {
        final provider = getIt<MyIpBloc>();
        provider.add(const MyIpBlocEvent.call());
        return provider;
      }),
    ];
  }

  @override
  Widget body(BuildContext context) {
    return Center(
      child: BlocConsumer<MyIpBloc,MyIpBlocState>(
        listener: (context,state){
          state.whenOrNull(
              failed: (message){
                showSnackBarMessage(context,snackBarType: SnackBarType.error,message: message ?? '');
              }
          );
        },
        builder:  (context,state){
          return state.whenOrNull(
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
                    Text(S.of(context).bloc,style: Theme.of(context).textTheme.labelMedium,),
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
