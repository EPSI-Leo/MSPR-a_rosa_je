import 'package:arosa_je/core/mock_plant_data/plant_data.dart';
import 'package:flutter/material.dart';

class PlantDetailScreen extends StatelessWidget {
  final String id;

  // Dummy plant list (replace it with your actual data fetching logic)
  final List<Plant> dummyPlantList = plantList;

  PlantDetailScreen({required this.id});

  @override
  Widget build(BuildContext context) {
    // Find the plant with the given id in the dummy plant list
    Plant? selectedPlant = dummyPlantList.firstWhere((plant) => plant.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display plant image
            Image.asset(selectedPlant.image),

            // Display plant name
            Text(selectedPlant.name),

            // Display plant advice
            Text(selectedPlant.advice ?? 'No advice available'),
          ],
        ),
      ),
    );
  }
}
