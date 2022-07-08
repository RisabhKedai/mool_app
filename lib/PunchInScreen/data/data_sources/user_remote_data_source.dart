import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:mool_app/Login/data/models/user_login_response_model.dart';
import 'package:mool_app/Login/domain/entities/api_response.dart';
import 'package:mool_app/Login/domain/entities/api_request.dart';

import '../../../../core/error/exceptions.dart';
import '../models/user_login_response_model.dart';
import '../models/user_login_request_model.dart';

abstract class UserLoginRemoteDataSource {
  /// Throws a [ServerException] for all error codes.
  Future<UserLoginResponseModel> checkUser(Request request);
}

class UserLoginRemoteDataSourceImpl implements UserLoginRemoteDataSource {
  final http.Client client;

  UserLoginRemoteDataSourceImpl({required this.client});

  @override
  Future<UserLoginResponseModel> checkUser(Request req) {
    return _getRespFromUrl('http://stage.moolfinance.com/api/auth/check', req);
  }

  Future<UserLoginResponseModel> _getRespFromUrl(
      String url, Request req) async {
    final response = await client.get(
      url,
      req,
      // headers: {
      //   'Content-Type': 'application/json',
      // },
    );

    if (response.statusCode == 200) {
      return UserLoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
