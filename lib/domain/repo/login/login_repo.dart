import 'package:kafiil_task/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kafiil_task/data/models/login/login_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginModel>> login(String email, String password);
}
