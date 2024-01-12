import 'package:arosa_je/core/mock_plant_data/plant_data.dart';
import 'package:arosa_je/modules/user_plant_list/notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class PlantPage extends ConsumerStatefulWidget {
  final String userId;

  const PlantPage({super.key, required this.userId});

  @override
  ConsumerState<PlantPage> createState() => _PlantPageState();
}

class _PlantPageState extends ConsumerState<PlantPage> {
  List<dynamic> plants = [];


  @override
  Widget build(BuildContext context) {
    ref.listen(plantsNotifierProvider, (_, next) {
      next.when(
        data: (data) async {
          plants = data;
        },
        error: (error, stackTrace) {
        },
        loading: () {
        },
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Plants'),
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

  const PlantTile({super.key, required this.plant});

  @override
  PlantTileState createState() => PlantTileState();
}

class PlantTileState extends State<PlantTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
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
