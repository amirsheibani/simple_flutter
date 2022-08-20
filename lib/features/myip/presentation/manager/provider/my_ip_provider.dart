import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:simple/features/myip/domain/usecase/my_ip_usecase.dart';
import 'package:simple/features/myip/presentation/manager/provider/my_ip_provider_state.dart';

@injectable
class MyIpPageProvider with ChangeNotifier {
  MyIpProviderState _useState = const MyIpProviderState.idle();

  MyIpProviderState get state => _useState;


  set useState(MyIpProviderState value) {
    _useState = value;
    notifyListeners();
  }

  final MyIPUseCase _ipUseCase;
  MyIpPageProvider(this._ipUseCase);

  callApi() async {
    useState = const MyIpProviderState.loading();
    final result = await _ipUseCase.call();
    result.when(
      success: (data) {
        useState = MyIpProviderState.success(data: data);
      },
      failure: (e, message) {
        useState = MyIpProviderState.failed(message: message ?? e.toString());
      },
    );
  }
}
