import 'dart:convert';

import 'package:arosa_je/core/config.dart';
import 'package:arosa_je/core/mock_plant_data/plant_data.dart';
import 'package:arosa_je/data/sources/app_base_client.dart';
import 'package:arosa_je/src/data/sources/http/api_client.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_plant.g.dart';

@riverpod
ApiPlants apiPlants(ApiPlantsRef ref) {
  final client = ref.watch(appBaseClientProvider);
  final config = ref.watch(configProvider);

  return ApiPlants(
    innerClient: client,
    config: config,
  );
}

class ApiPlants extends ApiClient {
  ApiPlants({
    required super.innerClient,
    required this.config,
  });

  final Config config;

  @override
  String get baseUrl => config.baseUrl;

  Future<List<Plant>> fetchPlants(String userId) async {
    final response = await get(Uri.parse('$baseUrl/user-plants/$userId'));

    if (response.statusCode == 200) {
      final List<dynamic> plants = jsonDecode(response.body);
      return plants.cast<Plant>();
    } else {
      throw Exception('Failed to load plants');
    }
  }
}
