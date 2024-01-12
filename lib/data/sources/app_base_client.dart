import 'package:arosa_je/core/config.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_base_client.g.dart';

@riverpod
AppBaseClient appBaseClient(AppBaseClientRef ref) {
  return AppBaseClient(
    config: ref.watch(configProvider),
    innerClient: Client(),
  );
}

class AppBaseClient extends BaseClient {
  final Config config;
  final Client innerClient;

  AppBaseClient({
    required this.innerClient,
    required this.config,
  }) : super();

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    // Ajoutez votre logique d'envoi ici
    // (par exemple, ajout de headers, manipulation de la requête, etc.)
    return innerClient.send(request);
  }
}
