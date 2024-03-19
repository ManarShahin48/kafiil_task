import 'package:dartz/dartz.dart';
import 'package:kafiil_task/core/error/failure.dart';
import 'package:kafiil_task/data/datasoures/login/login_datasource.dart';
import 'package:kafiil_task/data/models/login/login_model.dart';
import 'package:kafiil_task/domain/repo/login/login_repo.dart';

import '../../../core/resources/toast_service.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSourceImpl dataSource;

  LoginRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<Failure, LoginModel>> login(
    String email,
    String password,
  ) async {
    var result = await dataSource.login(
      email,
      password,
    );
    if(result.statusCode == 302){
      print("object");
    }
    if(result.statusCode == 522){
      ToastService.showUnExpectedErrorToast();
    }
    if (result.statusCode == 200 && result.data['status']) {
      LoginModel res = result.data['data'];
      return Right(res);
    } else if (result.statusCode == 200 && !result.data['status']) {
      return Left(
        ServerFailure(result.data['message']),
      );
    } else {
      return Left(
        ServerFailure(result.data['message']),
      );
    }
  }
}
