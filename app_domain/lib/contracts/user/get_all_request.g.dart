// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllUserRequest _$GetAllUserRequestFromJson(Map<String, dynamic> json) =>
    GetAllUserRequest(
      pageSize: json['pageSize'] as int,
      pageNumber: json['pageNumber'] as int,
      searchText: json['searchText'] as String?,
    );

Map<String, dynamic> _$GetAllUserRequestToJson(GetAllUserRequest instance) =>
    <String, dynamic>{
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
      'searchText': instance.searchText,
    };

GetAllUserResult _$GetAllUserResultFromJson(Map<String, dynamic> json) =>
    GetAllUserResult(
      totalCount: json['totalCount'] as int,
      pageSize: json['pageSize'] as int,
      pageNumber: json['pageNumber'] as int,
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$GetAllUserResultToJson(GetAllUserResult instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
      'users': instance.users,
    };
