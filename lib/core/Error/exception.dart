import 'package:kafiil_task/core/Error/error_model.dart';

class ServerException implements Exception {
  final ErrorModel errorModel;

  const ServerException({required this.errorModel});
}
