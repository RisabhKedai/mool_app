import 'package:mool_app/Login/domain/entities/api_request.dart';
import 'package:meta/meta.dart';

class UserLoginRequestModel extends Request {
  var username;
  var password;

  UserLoginRequestModel({@required username, @required password})
      : super(username: username, password: password);

  factory UserLoginRequestModel.fromJson(Map<String, String> json) {
    return UserLoginRequestModel(
        username: json['username'], password: json['password']);
  }

  Map<String, String> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}
