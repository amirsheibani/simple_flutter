import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:simple/features/myip/domain/usecase/my_ip_usecase.dart';
import 'package:simple/features/myip/presentation/manager/bloc/my_ip_bloc_event.dart';
import 'package:simple/features/myip/presentation/manager/bloc/my_ip_bloc_state.dart';

@injectable
class MyIpBloc extends Bloc<MyIpBlocEvent, MyIpBlocState> {
  final MyIPUseCase _ipUseCase;

  MyIpBloc(this._ipUseCase) : super(const MyIpBlocState.idle()) {
    on<MyIpBlocEvent>((event, emit) async {
      await event.when(
        call: () async {
          await _call(emit);
        },
      );
    });
  }

  _call(Emitter<MyIpBlocState> emit) async {
    emit(const MyIpBlocState.loading());
    final result = await _ipUseCase.call();
    result.when(
      success: (data) {
        emit(MyIpBlocState.success(data: data));
      },
      failure: (e, message) {
        emit(MyIpBlocState.failed(message: message ?? e.toString()));
      },
    );
  }
}
