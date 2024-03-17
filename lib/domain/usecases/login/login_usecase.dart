import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:kafiil_task/core/error/failure.dart';
import 'package:kafiil_task/core/usecase/use_case.dart';
import 'package:kafiil_task/data/models/login/login_model.dart';
import 'package:kafiil_task/domain/repo/login/login_repo.dart';

class LoginUseCase implements UseCase<LoginModel, Params> {
  final LoginRepository loginRepository;

  LoginUseCase({required this.loginRepository});

  @override
  Future<Either<Failure, LoginModel>> call(Params params) async {
    return await loginRepository.login(params.email, params.password);
  }
}

class Params extends Equatable {
  final String email;
  final String password;

  const Params({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
