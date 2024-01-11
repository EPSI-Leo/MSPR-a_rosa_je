import 'package:arosa_je/core/theme/app_gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlantView extends ConsumerWidget {
  const PlantView({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      content: Center(
        child: Column(
          children: [
            //TODO change to image from db
            const Image(
              image: AssetImage('lib/assets/images/icon.png'),
            ),
            Text(
              id,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const AppGap.medium(),
            const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed non risus. Suspendisse lectus tortor, dignissim sit amet, '
                'adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. '
                'Maecenas ligula massa, varius a, semper congue, euismod non, mi. '
                'Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, '
                'non fermentum diam nisl sit amet erat.'),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Annuler'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Valider'),
        ),
      ],
    );
  }
}
