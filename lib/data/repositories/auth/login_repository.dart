import 'package:arosa_je/data/sources/auth/api_login.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_repository.g.dart';

@riverpod
LoginRepository loginRepository(LoginRepositoryRef ref) {
  final api = ref.watch(apiLoginProvider);

  return LoginRepository(api: api);
}

class LoginRepository {
  const LoginRepository({required this.api});
  final ApiLogin api;

  Future<bool> login(String username) async {
    final users = await api.getUsers();
    final userExists = users.any((user) => user['username'] == username);
    return userExists;
  }

  
}
