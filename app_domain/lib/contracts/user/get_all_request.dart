import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'get_all_request.g.dart';

@JsonSerializable()
class GetAllUserRequest {
  int pageSize;
  int pageNumber;
  String? searchText;

  GetAllUserRequest({
    required this.pageSize,
    required this.pageNumber,
    this.searchText,
  });
  factory GetAllUserRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAllUserRequestFromJson(json);
  Map<String, dynamic> toJson() => _$GetAllUserRequestToJson(this);
}

@JsonSerializable()
class GetAllUserResult {
  int totalCount;
  int pageSize;
  int pageNumber;
  List<User> users;

  GetAllUserResult({
    required this.totalCount,
    required this.pageSize,
    required this.pageNumber,
    this.users = const [],
  });

  factory GetAllUserResult.fromJson(Map<String, dynamic> json) =>
      _$GetAllUserResultFromJson(json);
  Map<String, dynamic> toJson() => _$GetAllUserResultToJson(this);
}
