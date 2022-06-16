import 'package:dartz/dartz.dart';

import 'package:mool_app/Login/domain/entities/api_request.dart';
import 'package:mool_app/Login/domain/entities/api_response.dart';
import 'package:mool_app/core/error/failures.dart';
import 'package:mool_app/core/usecases/usecase.dart';
import '../repositories/user_login_repo.dart';

class UserLogin implements UseCase<Response, Request> {
  final UserLoginRepo loginRepo;

  UserLogin(this.loginRepo);

  @override
  Future<Either<Failure, Response>> call(Request request) async {
    return await loginRepo.checkUser(request);
  }
}
