import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class _UserEntity extends Equatable {
  final int id;
  final String name;
  final String address;
  final String phoneNumber;

  _UserEntity(
      {@required this.id,
      @required this.name,
      @required this.address,
      @required this.phoneNumber});
  @override
  // TODO: implement props
  List<Object> get props => [
        {id, name, address, phoneNumber}
      ];

  _UserEntity copyWith(
          {@required int id,
          @required String name,
          @required String address,
          String phoneNumber}) =>
      _UserEntity(
          id: id ?? this.id,
          name: name ?? this.name,
          address: address ?? this.address,
          phoneNumber: phoneNumber ?? this.phoneNumber);
}

class UserModel extends _UserEntity {
  UserModel(
      {@required int id,
      @required String name,
      @required String address,
      String phoneNumber})
      : super(id: id, name: name, address: address, phoneNumber: phoneNumber);
}
