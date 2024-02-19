import 'package:app_domain/contracts/user/get_all_request.dart';
import 'package:app_domain/contracts/user/user.dart';
import 'package:app_domain/repositories/user_data_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'users_state.dart';

@injectable
class UsersCubit extends Cubit<UsersState> {
  final UserDataService userDataService;
  UsersCubit(this.userDataService) : super(UsersInitial());

  Future<List<User>> getUsers(int pageKey, {required int size}) async {
    final data = await userDataService.getAll(GetAllUserRequest(
      pageNumber: pageKey,
      pageSize: size,
    ));
    return data.users;
  }
}
