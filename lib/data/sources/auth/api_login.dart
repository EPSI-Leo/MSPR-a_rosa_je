import 'dart:convert';

import 'package:arosa_je/core/config.dart';
import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/data/sources/app_base_client.dart';
import 'package:arosa_je/src/data/sources/http/api_client.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_login.g.dart';

@riverpod
ApiLogin apiLogin(ApiLoginRef ref) {
  final client = ref.watch(appBaseClientProvider);
  final config = ref.watch(configProvider);

  return ApiLogin(
    innerClient: client,
    config: config,
  );
}

class ApiLogin extends ApiClient {
  ApiLogin({
    required super.innerClient,
    required this.config,
  });

  final Config config;

  @override
  String get baseUrl => config.baseUrl;

  Future<dynamic> login(String username) async {
    final response = await post(Uri.parse('$baseUrl/login'), body: {
      "username": username,
    });

    // Vérifiez si la réponse est réussie (code de statut 200)
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as dynamic;
    } else {
      // Gestion des erreurs - statut de réponse indésirable
      printDebug(
          'Erreur lors de la connexion. Statut de réponse: ${response.statusCode}');
      return null; // Ou lancez une exception selon les besoins
    }
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    final response = await get(Uri.parse('$baseUrl/login'));
    if (response.statusCode == 200) {
      final List<dynamic> users = jsonDecode(response.body);
      return users.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Erreur lors de la récupération des utilisateurs');
    }
  }
}
