import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Response extends Equatable {
  final success;
  final message;
  final data;

  Response(
      {@required this.success, @required this.message, @required this.data});

  List<Object> get props => [success, message, data];
}
