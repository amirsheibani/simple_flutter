import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple/features/myip/domain/entity/ip_entity.dart';

part 'my_ip_provider_state.freezed.dart';

@freezed
abstract class MyIpProviderState with _$MyIpProviderState{
  const factory MyIpProviderState.idle() = MyIpProviderStateIdle;
  const factory MyIpProviderState.loading() = MyIpProviderStateLoading;
  const factory MyIpProviderState.success(
      {IpEntity? data}) = MyIpProviderStateSuccess;
  const factory MyIpProviderState.failed({String? message}) = MyIpProviderStateFailed;
}