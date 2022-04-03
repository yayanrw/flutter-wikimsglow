import 'package:wikimsglow/core/utils/error/exceptions.dart';
import 'package:wikimsglow/features/login/data/datasources/login_remote_datasource.dart';
import 'package:wikimsglow/features/login/domain/entities/login.dart';
import 'package:wikimsglow/core/utils/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:wikimsglow/features/login/domain/repositories/login_repository.dart';
import 'dart:io';

class LoginRepositoryImpl implements LoginRepository {
  late final LoginRemoteDataSource _loginRemoteDataSource;

  LoginRepositoryImpl(this._loginRemoteDataSource);

  @override
  Future<Either<Failure, Login>> getLogin(
      String username, String password) async {
    try {
      final result = await _loginRemoteDataSource.getLogin(username, password);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
