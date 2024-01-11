import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/modules/app/session_manager.dart';
import 'package:arosa_je/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../drawer/home_drawer.dart';

class Plant {
  String name;
  String careAdvice;

  Plant({required this.name, required this.careAdvice});
}

class AdviceView extends StatelessWidget {
  AdviceView({super.key});

  final List<Plant> plants = [
    Plant(name: 'Rose', careAdvice: 'Water regularly and provide sunlight.'),
    Plant(name: 'Lily', careAdvice: 'Keep the soil moist and provide shade.'),
    Plant(name: 'Succulent', careAdvice: 'Water sparingly and give sunlight.'),
    // Add more plants as needed
  ];

  @override
  Widget build(BuildContext context) {
    final coreL10n = context.coreL10n;
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Care Guide'),
      ),
      body: ListView.builder(
        itemCount: plants.length,
        itemBuilder: (context, index) {
          return PlantItem(plants[index]);
        },
      ),
      drawer: const HomeDrawer(),
    );
  }
}

class PlantItem extends StatefulWidget {
  final Plant plant;

  PlantItem(this.plant);

  @override
  _PlantItemState createState() => _PlantItemState();
}

class _PlantItemState extends State<PlantItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: Text(widget.plant.name),
        subtitle: Text('Click to see care advice'),
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
