import 'dart:async';

import 'package:http/http.dart';

abstract class ApiClient {
  ApiClient({
    required Client innerClient,
  }) : _innerClient = innerClient;

  final Client _innerClient;

  /// The base url for each service.
  String get baseUrl;

  /// The timeout for each http calls.
  Duration get timeout => const Duration(seconds: 30);

  /// Sends get request through `innerClient`.
  ///
  /// if `deserializer` is specified, returns an object of type [T]
  Future<Response> get(
    String relativeUrl, {
    Map<String, String>? headers,
  }) async {
    final uri = Uri.parse('$baseUrl$relativeUrl');

    return _innerClient.get(
      uri,
      headers: headers,
    );
  }

  Future<Response> post(
    String relativeUrl, {
    Map<String, String>? headers,
    Object? body,
  }) async {
    final uri = Uri.parse('$baseUrl$relativeUrl');

    return _innerClient.post(
      uri,
      headers: headers,
      body: body,
    );
  }

  Future<Response> patch(
    String relativeUrl, {
    Map<String, String>? headers,
    Object? body,
  }) async {
    final uri = Uri.parse('$baseUrl$relativeUrl');

    return _innerClient.patch(
      uri,
      headers: headers,
      body: body,
    );
  }

  Future<Response> put(
    String relativeUrl, {
    Map<String, String>? headers,
    Object? body,
  }) async {
    final uri = Uri.parse('$baseUrl$relativeUrl');

    return _innerClient.put(
      uri,
      headers: headers,
      body: body,
    );
  }

  Future<Response> delete(
    String relativeUrl, {
    Map<String, String>? headers,
    Object? body,
  }) async {
    final uri = Uri.parse('$baseUrl$relativeUrl');

    return _innerClient.delete(
      uri,
      headers: headers,
      body: body,
    );
  }
}
