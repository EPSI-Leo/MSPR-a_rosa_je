import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/modules/advice/add_plant.dart';
import 'package:arosa_je/modules/advice/plant_data.dart';
import 'package:flutter/material.dart';
import '../drawer/home_drawer.dart';


class AdviceView extends StatefulWidget {
  const AdviceView({Key? key}) : super(key: key);

  @override
  _AdviceViewState createState() => _AdviceViewState();
}

class _AdviceViewState extends State<AdviceView> {
  final List<Plant> plants = plantList;

  @override
  Widget build(BuildContext context) {
    final coreL10n = context.coreL10n;
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Care Guide'),
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
            MaterialPageRoute(builder: (context) => AddPlantScreen()),
          );
          if (newPlant != null) {
            setState(() {
              plants.add(newPlant);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class PlantItem extends StatefulWidget {
  final Plant plant;

  const PlantItem(this.plant);

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
