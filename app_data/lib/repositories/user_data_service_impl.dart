import 'package:app_domain/contracts/user/get_all_request.dart';
import 'package:app_domain/contracts/user/get_user_detail_request.dart';
import 'package:app_domain/repositories/user_data_service.dart';

class UserDataServiceImpl implements UserDataService {
  @override
  Future<GetAllUserResponse> getAll(GetAllUserRequest request) {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<GetUserDetailResponse> getUserDetail(GetUserDetailRequest request) {
    // TODO: implement getUserDetail
    throw UnimplementedError();
  }
}
