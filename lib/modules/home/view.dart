import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/modules/app_map_gps.dart/view.dart';
import 'package:arosa_je/modules/camera/view.dart';
import 'package:arosa_je/modules/drawer/home_drawer.dart';
import 'package:arosa_je/modules/home/home_requirement_state_controller.dart';
import 'package:camera/camera.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final coreL10n = context.coreL10n;
    return Scaffold(
      body: Stack(
        children: [
          const Column(
            children: [
              MapView(),
            ],
          ),
          Positioned(
            top: 30.0,
            left: 16.0,
            child: Builder(
              builder: (BuildContext builderContext) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(builderContext).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 8.0,
            right: 8.0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.camera_alt),
                    color: Colors.white,
                    onPressed: () async {
                      await availableCameras().then(
                        (value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => CameraView(cameras: value))),
                      );
                      printDebug("Button Pressed");
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: const HomeDrawer(),
    );
  }
}
