import 'package:arosa_je/data/repositories/user_plants_repository.dart';
import 'package:arosa_je/core/mock_plant_data/plant_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifier.g.dart';

@Riverpod(keepAlive: false)
class PlantsNotifier extends _$PlantsNotifier {
  @override
  FutureOr<List<Plant>> build() {
    return [];
  }

  Future<void> userPlants(
    String userId,
  ) async {
    state = const AsyncLoading();
    final userPlantsRepository = ref.read(userPlantRepositoryProvider);
    state = await AsyncValue.guard(() => userPlantsRepository.fetchPlants(
          userId,
        ));
  }
}

// class PlantsNotifier extends ChangeNotifier {
//   final ApiPlants apiPlants;

//   PlantsNotifier({required this.apiPlants});

//   List<Plant> _plants = [];
//   List<Plant> get plants => _plants;

//   Future<void> fetchPlants(String userId) async {
//     try {
//       final List<Plant> fetchedPlants = await apiPlants.fetchPlants(userId);
//       _plants = fetchedPlants;
//       notifyListeners();
//     } catch (e) {
//       // Handle error appropriately
//       print('Error fetching plants: $e');
//     }
//   }
// }
