import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/modules/form/add_personal_plants_view.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PreviewPage extends StatelessWidget {
  const PreviewPage({super.key, required this.picture});

  final XFile picture;

  @override
  Widget build(BuildContext context) {
    final coreL10n = context.coreL10n;
    return Scaffold(
      appBar: AppBar(title: const Text('Preview Page')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.file(File(picture.path), fit: BoxFit.cover, width: 250),
          const SizedBox(height: 24),
          Text(picture.name),
          AppButton(
              label: coreL10n.continues,
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddPlantView(
                              plant: picture.name,
                            )));
              }),
        ]),
      ),
    );
  }
}
