import 'package:dartz/dartz.dart';
import 'package:wikimsglow/core/utils/error/failure.dart';
import 'package:wikimsglow/features/login/domain/entities/login.dart';

abstract class LoginRepository {
  Future<Either<Failure, Login>> getLogin(String username, String password);
}
