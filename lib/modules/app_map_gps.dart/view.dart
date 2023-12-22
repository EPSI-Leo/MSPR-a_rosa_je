import 'dart:async';

import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/modules/app/app_initialcenter_providers.dart';
import 'package:arosa_je/modules/home/home_requirement_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class MapView extends ConsumerStatefulWidget {
  const MapView({super.key});

  @override
  ConsumerState<MapView> createState() => _MapViewState();
}

class LocationStreamController {
  static final StreamController<LatLng?> _streamController =
      StreamController<LatLng?>.broadcast();

  static Stream<LatLng?> get stream => _streamController.stream;

  static void addLocation(LatLng location) {
    _streamController.add(location);
  }

  static void dispose() {
    _streamController.close();
  }
}

class _MapViewState extends ConsumerState<MapView> {
  // ignore: non_constant_identifier_names
  final controller = Get.find<HomeRequirementStateController>();
  @override
  void dispose() {
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    // Récupérer la valeur de initialCenter depuis le fournisseur
    LatLng? initialCenter = ref.read(initialCenterProvider).value;

    // Vérifier si initialCenter est non nul
    return map(initialCenter!);
  }

  Widget map(LatLng initialCenter) {
    return Expanded(
      child: SizedBox.expand(
        child: FlutterMap(
          options: MapOptions(
            initialCenter: initialCenter,
            initialZoom: 16.0,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            RichAttributionWidget(
              attributions: [
                TextSourceAttribution(
                  'OpenStreetMap contributors',
                  onTap: () => launchUrl(
                      Uri.parse('https://openstreetmap.org/copyright')),
                ),
              ],
            ),
            MarkerLayer(markers: [
              Marker(
                width: 40.0,
                height: 40.0,
                point: LatLng(
                  initialCenter.latitude,
                  initialCenter.longitude,
                ),
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
