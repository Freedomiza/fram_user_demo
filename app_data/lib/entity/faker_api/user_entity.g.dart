// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      id: json['id'] as int?,
      uuid: json['uuid'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      ip: json['ip'] as String?,
      macAddress: json['macAddress'] as String?,
      website: json['website'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'ip': instance.ip,
      'macAddress': instance.macAddress,
      'website': instance.website,
      'image': instance.image,
    };
