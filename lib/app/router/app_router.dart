import 'package:go_router/go_router.dart';
import 'app_routes.dart';

class AppRouter {
  static final routerConfig = GoRouter(
    routes: AppRoutes.routes,
  );
}