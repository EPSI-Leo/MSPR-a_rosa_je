import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/modules/advice/add_plant.dart';
import 'package:arosa_je/modules/advice/plant_data.dart';
import 'package:flutter/material.dart';

class AdviceView extends StatefulWidget {
  const AdviceView({super.key});

  @override
  AdviceViewState createState() => AdviceViewState();
}

class AdviceViewState extends State<AdviceView> {
  final List<Plant> plants = plantList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plant Care Guide'),
        leading: AppArrowBackIconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          tint: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemCount: plants.length,
        itemBuilder: (context, index) {
          return PlantItem(plants[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newPlant = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddPlantScreen()),
          );
          if (newPlant != null) {
            setState(() {
              plants.add(newPlant);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class PlantItem extends StatefulWidget {
  final Plant plant;

  const PlantItem(this.plant, {super.key});

  @override
  PlantItemState createState() => PlantItemState();
}

class PlantItemState extends State<PlantItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: Text(widget.plant.name),
        subtitle: const Text('Click to see care advice'),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(widget.plant.careAdvice),
          ),
        ],
      ),
    );
  }
}
