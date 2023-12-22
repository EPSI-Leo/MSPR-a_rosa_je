import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/modules/app/app.dart';
import 'package:arosa_je/modules/auth/login.dart';
import 'package:arosa_je/modules/auth/register.dart';
import 'package:arosa_je/modules/home/view.dart';
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
                  routes: const [
                    /*GoRoute(
                      path: AppRoute.journeys.path,
                      name: AppRoute.journeys.name,
                      builder: (context, state) {
                        printDebug('Router: JourneysPageView');

                        return const JourneysView();
                      },
                    ),*/
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
  static const AppRoute journeys = AppRoute._('journeys', 'journeys');
}
