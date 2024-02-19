import 'package:app_domain/contracts/user/get_all_request.dart';

abstract class UserDataService {
  GetAllUserResult getAll(GetAllUserRequest request);
}
