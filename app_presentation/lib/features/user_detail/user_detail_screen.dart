import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserDetailModule extends StatelessWidget {
  const UserDetailModule({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserDetailScreen();
  }
}

class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({super.key});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
