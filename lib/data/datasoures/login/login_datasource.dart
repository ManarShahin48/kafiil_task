import 'package:dio/dio.dart';
import 'package:kafiil_task/core/resources/apis_manager.dart';

abstract class LoginDataSource {
  Future<Response> login(String email, String password);
}

class LoginDataSourceImpl implements LoginDataSource {
  final Dio dio;

  LoginDataSourceImpl({required this.dio});

  @override
  Future<Response> login(String email, String password) {
    return dio.post(
      APIsManager.loginURL,
      options: Options(
        contentType: "application/json",
        followRedirects: false,
        maxRedirects: 0,
      ),
    );
  }
}
