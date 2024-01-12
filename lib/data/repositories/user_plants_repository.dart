import 'package:arosa_je/core/mock_plant_data/plant_data.dart';
import 'package:arosa_je/data/sources/api_plant.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_plants_repository.g.dart';

@riverpod
UserPlantRepository userPlantRepository(UserPlantRepositoryRef ref) {
  final api = ref.watch(apiPlantsProvider);

  return UserPlantRepository(api: api);
}

class UserPlantRepository {
  const UserPlantRepository({required this.api});
  final ApiPlants api;

  Future<List<Plant>> fetchPlants(String userId) async {
    final plants = api.fetchPlants(userId);
    return plants;
  }

}
