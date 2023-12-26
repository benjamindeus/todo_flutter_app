// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:equatable/equatable.dart';

class TodoEntity extends Equatable {
  final String ID;
  final String body;
  final String heading;
  TodoEntity({
    required this.ID,
    required this.body,
    required this.heading,
  });

  @override
  // TODO: implement props
  List<Object> get props => [
        ID,
        body,
        heading,
      ];
}
