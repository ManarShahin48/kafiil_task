import 'package:dio/dio.dart';
import 'package:kafiil_task/data/datasoures/login/login_datasource.dart';
import 'package:kafiil_task/data/repoImpl/login/login_repo_impl.dart';
import 'package:kafiil_task/domain/usecases/login/login_usecase.dart';
import 'package:kafiil_task/features/login/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  final Dio dio = Dio();
  late LoginRepositoryImpl _repositoryImpl;
  late LoginDataSourceImpl _dataSourceImpl;
  late LoginUseCase _useCase;

  bool _showPassword = true, _getRemembered = true;

  final String _email = "", _password = "";

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

  Future<bool> login() async {
    _dataSourceImpl = LoginDataSourceImpl(dio: dio);
    _repositoryImpl = LoginRepositoryImpl(dataSource: _dataSourceImpl);
    _useCase = LoginUseCase(loginRepository: _repositoryImpl);

    var response = await _useCase.call(
      Params(
        email: _email,
        password: _password,
      ),
    );
    return response.fold((l) {
      print("false");
      return Future.value(false);
    }, (r) {
      print("true");
      return Future.value(true);
    });
  }
}
