import 'package:app_domain/contracts/user/user.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'user_detail_screen.dart';

@RoutePage()
class UserDetailModule extends StatelessWidget {
  final User user;
  const UserDetailModule({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return UserDetailScreen(user: user);
  }
}
