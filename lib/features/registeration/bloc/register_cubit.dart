import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kafiil_task/features/registeration/bloc/register_state.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  final Dio dio = Dio();

  bool _showPassword = true, _showConfirmPassword = true;

  bool get showPassword => _showPassword;

  bool get showConfirmPassword => _showConfirmPassword;

  void toggleShowPassword() {
    _showPassword = !_showPassword;
    emit(ShowPassword());
  }

  void toggleShowConfirmPassword() {
    _showConfirmPassword = !_showConfirmPassword;
    emit(ShowConfirmPassword());
  }
}
