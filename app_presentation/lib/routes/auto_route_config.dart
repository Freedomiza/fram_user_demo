import 'package:auto_route/auto_route.dart';

import '../features/home/home_screen.dart';
import '../features/user_detail/user_detail_screen.dart';
import '../features/users/users_list_screen.dart';

part 'auto_route_config.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Module,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: UsersListRoute.page,
      initial: true,
    ),
    AutoRoute(
      path: '/home',
      page: HomeRoute.page,
    ),
    AutoRoute(
      path: '/detail',
      page: UserDetailRoute.page,
    ),
  ];
}
