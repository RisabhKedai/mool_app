import 'package:dartz/dartz.dart';
import 'package:mool_app/Login/domain/entities/api_request.dart';

import '../../../core/error/failures.dart';
import '../entities/api_response.dart';

abstract class UserLoginRepo {
  Future<Either<Failure, Response>> checkUser(Request request);
}
