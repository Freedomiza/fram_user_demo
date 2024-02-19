import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UsersListModule extends StatelessWidget {
  const UsersListModule({super.key});

  @override
  Widget build(BuildContext context) {
    return const UsersListScreen();
  }
}

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('UsersListScreen'),
      ),
    );
  }
}
