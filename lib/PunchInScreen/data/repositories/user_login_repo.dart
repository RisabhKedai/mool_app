import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/api_request.dart';
import '../../domain/entities/api_response.dart';
import '../../domain/repositories/user_login_repo.dart';

import '../data_sources/user_remote_data_source.dart';

class UserLoginRepoImpl implements UserLoginRepo {
  final remoteDataSource;
  final networkInfo;

  UserLoginRepoImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, Response>> checkUser(
    Request req,
  ) async {
    return await _checkUser(req);
  }

  Future<Either<Failure, Response>> _checkUser(Request req) async {
    if (await networkInfo.isConnected) {
      try {
        final userLogin = await remoteDataSource.checkUser(req);
        return Right(userLogin);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
