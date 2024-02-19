import 'package:app_domain/contracts/user/user.dart';
import 'package:faker_fram/extensions/user_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../shared/widgets/network_avatar.dart';
import '../../shared/widgets/row_table.dart';

class UserDetailScreen extends StatefulWidget {
  final User user;
  const UserDetailScreen({super.key, required this.user});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final user = widget.user;
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail'),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NetworkAvatar(
            src: user.image ?? '',
            size: 64.sp,
          ),
          const Gap(20),
          RowTable(
            title: 'Id',
            value: "${user.id ?? ''}",
          ),
          RowTable(
            title: 'Name',
            value: user.fullName,
          ),
          RowTable(
            title: 'User name',
            value: user.username ?? '',
          ),
          RowTable(
            title: 'Email',
            value: user.email ?? '',
          ),
          RowTable(
            title: 'Website',
            value: user.website ?? '',
          ),
          RowTable(
            title: 'IP',
            value: user.ip ?? '',
          ),
          RowTable(
            title: 'Mac Address',
            value: user.macAddress ?? '',
          ),
          const RowTable(
            title: 'Password',
            value: '********',
          ),
        ],
      )),
    );
  }
}
