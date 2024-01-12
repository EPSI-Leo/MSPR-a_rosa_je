import 'package:arosa_je/core/mock_plant_data/plant_data.dart';
import 'package:flutter/material.dart';

class PlantDetailScreen extends StatelessWidget {
  final String id;

  // Dummy plant list (replace it with your actual data fetching logic)
  final List<Plant> dummyPlantList = plantList;

  PlantDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    // Find the plant with the given id in the dummy plant list
    Plant? selectedPlant = dummyPlantList.firstWhere((plant) => plant.id == id);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Plant Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Display plant image
            Container(
              width: double.infinity,
              height: 200, // Adjust the height as needed
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(selectedPlant.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),

            const SizedBox(height: 16.0),

            // Display plant name
            Text(
              selectedPlant.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8.0),

            // Display plant advice
            Text(
              selectedPlant.advice ?? 'No advice available',
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
