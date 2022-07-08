import 'package:meta/meta.dart';
import 'package:mool_app/Login/domain/entities/api_response.dart';

class UserLoginResponseModel extends Response {
  final success;
  final message;
  final data;

  UserLoginResponseModel(
      {@required this.success, @required this.message, @required this.data})
      : super(success: success, message: message, data: data);

  factory UserLoginResponseModel.fromJson(Map<String, String> json) {
    return UserLoginResponseModel(
        success: json['success'], message: json['message'], data: json['data']);
  }

  Map<String, String> toJson() {
    return {
      'success': success,
      'message': message,
      'data': data,
    };
  }
}
