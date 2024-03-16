import 'package:kafiil_task/features/login/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  bool _showPassword = false, _getRemembered = false;

  bool get showPassword => _showPassword;

  bool get getRemembered => _getRemembered;

  void toggleShowPassword() {
    _showPassword = !_showPassword;
    emit(ShowPassword());
  }

  void toggleGetRemembered() {
    _getRemembered = !_getRemembered;
    emit(GetRemember());
  }
}
