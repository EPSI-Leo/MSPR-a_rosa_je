import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/core/mock_plant_data/plant_data.dart';
import 'package:arosa_je/modules/advice/view.dart';
import 'package:arosa_je/modules/app/app.dart';
import 'package:arosa_je/modules/app/session_manager.dart';
import 'package:arosa_je/modules/auth/login/view.dart';
import 'package:arosa_je/modules/auth/register/view.dart';
import 'package:arosa_je/modules/home/view.dart';
import 'package:arosa_je/modules/user_plant_list/view.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: AppRoute.root.path,
    routes: [
      GoRoute(
          path: AppRoute.root.path,
          name: AppRoute.root.name,
          builder: (context, state) => const App(),
          routes: [
            GoRoute(
              path: AppRoute.login.path,
              name: AppRoute.login.name,
              builder: (context, state) => const LoginView(),
              routes: [
                GoRoute(
                    path: AppRoute.register.path,
                    name: AppRoute.register.name,
                    builder: (context, state) => const RegisterView()),
                GoRoute(
                  path: AppRoute.home.path,
                  name: AppRoute.home.name,
                  builder: (context, state) {
                    printDebug('Router: HomeView');

                    return const HomeView();
                  },
                  routes: [
                    GoRoute(
                      path: AppRoute.advice.path,
                      name: AppRoute.advice.name,
                      builder: (context, state) {
                        return AdviceView();
                      },
                    ),
                    GoRoute(
                      path: AppRoute.userPlantList.path,
                      name: AppRoute.userPlantList.name,
                      builder: (context, state) {
                        final String userId = state.pathParameters['userId'] ?? "";
                        return PlantPage(userId: userId);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ]),
    ],
  );
}

class AppRoute {
  const AppRoute._(this.path, this.name);
  final String path;
  final String name;

  static const AppRoute root = AppRoute._('/', 'root');
  static const AppRoute login = AppRoute._('login', 'login');
  static const AppRoute register = AppRoute._('register', 'register');
  static const AppRoute home = AppRoute._('home', 'home');
  static const AppRoute camera = AppRoute._('camera', 'camera');
  static const AppRoute preview = AppRoute._('preview', 'preview');
  static const AppRoute advice = AppRoute._('advice', 'advice');
  static const AppRoute userPlantList =
      AppRoute._('user_plant_list', 'user_plant_list');
}
