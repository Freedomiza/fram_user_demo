import 'package:app_domain/contracts/user/user.dart';
import 'package:faker_fram/extensions/user_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/widgets/network_avatar.dart';

class UserListItem extends StatelessWidget {
  final User user;
  final VoidCallback? onPress;

  const UserListItem({
    super.key,
    required this.user,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () => onPress?.call(),
        child: ListTile(
          title: Text(user.fullName),
          subtitle: Text(user.email ?? ""),
          leading: NetworkAvatar(src: user.image),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
