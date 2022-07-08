import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Request extends Equatable {
  final username;
  final password;

  Request({@required this.username, @required this.password});
  List<Object> get props => [username, password];
}
