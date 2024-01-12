import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/modules/app/session_manager.dart';
import 'package:arosa_je/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeDrawer extends ConsumerWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(appColorThemeProvider);
    final coreL10n = context.coreL10n;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: colors.textfieldlabel,
            ),
            child: const Text(
              "A'Rosa-je",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),

          /* ListTile(
            leading: const Icon(Icons.chat),
            title: Text(coreL10n.feedback),
            onTap: () {
              context.goNamed(AppRoute.feedback.name);
            },
          ),*/
          ListTile(
            leading: const Icon(Icons.chat),
            title: Text(coreL10n.advice),
            onTap: () async {
              String? userId = await SessionManager.getId();
              context.goNamed(AppRoute.advice.name, pathParameters: {'userId': userId ?? ""});
            },
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: Text(coreL10n.myPlants),
            onTap: () {
              context.goNamed(AppRoute.userPlantList.name);
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Colors.red),
            title: Text(coreL10n.disconnect,
                style: const TextStyle(color: Colors.red)),
            onTap: () async {
              await SessionManager.setLoggedIn(false);
              // ignore: use_build_context_synchronously
              context.goNamed(AppRoute.login.name);
            },
          ),
        ],
      ),
    );
  }
}
