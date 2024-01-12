import 'package:arosa_je/core/mock_plant_data/plant_data.dart';
import 'package:flutter/material.dart';

class PlantPage extends StatefulWidget {
  final String userId;

  PlantPage({required this.userId});

  @override
  _PlantPageState createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
  List<dynamic> plants = [];

  @override
  void initState() {
    super.initState();
    // Fetch plants when the widget is initialized
    // fetchPlants();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Plants'),
      ),
      body: ListView.builder(
        itemCount: plants.length,
        itemBuilder: (context, index) {
          return PlantTile(plant: plants[index]);
        },
      ),
    );
  }
}

class PlantTile extends StatefulWidget {
  final Plant plant;

  PlantTile({required this.plant});

  @override
  _PlantTileState createState() => _PlantTileState();
}

class _PlantTileState extends State<PlantTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: Text(widget.plant.name),
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.plant.image),
        ),
        children: <Widget>[
          ListTile(
            title: Text('Location: ${widget.plant.location.latitude}, ${widget.plant.location.longitude}'),
          ),
          if (widget.plant.advice != null)
            ListTile(
              title: Text('Advice: ${widget.plant.advice}'),
            ),
        ],
      ),
    );
  }
}
