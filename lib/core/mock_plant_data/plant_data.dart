import 'package:latlong2/latlong.dart';

class Plant {
  String id;
  String name;
  LatLng location;
  String image;
  String? advice;
  int ownerID;

  Plant(this.id, this.name, this.location, this.image, this.ownerID, {this.advice});

  @override
  String toString() {
    return 'Plant{id: $id, name: $name, position: $location, image: $image, advice: $advice, ownerID: $ownerID}';
  }
}

List<Plant> plantList = [
  Plant("1", 'Rose', const LatLng(0.001, 0.0001), 'lib/assets/plants/rose.jpg', 101, advice: 'Keep soil moist.'),
  Plant("2", 'Fern', const LatLng(0, 0), 'lib/assets/plants/fern.jpg', 102),
];
