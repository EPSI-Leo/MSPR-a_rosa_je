import 'package:arosa_je/modules/advice/plant_data.dart';
import 'package:flutter/material.dart';

class AddPlantScreen extends StatefulWidget {
  const AddPlantScreen({super.key});

  @override
  AddPlantScreenState createState() => AddPlantScreenState();
}

class AddPlantScreenState extends State<AddPlantScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController adviceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Plant'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Plant Name'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: adviceController,
              decoration: const InputDecoration(labelText: 'Care Advice'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    adviceController.text.isNotEmpty) {
                  Plant newPlant = Plant(
                    name: nameController.text,
                    careAdvice: adviceController.text,
                  );
                  Navigator.pop(context, newPlant);
                } else {
                  // Show an error message or handle the case where input is incomplete
                }
              },
              child: const Text('Add Plant'),
            ),
          ],
        ),
      ),
    );
  }
}