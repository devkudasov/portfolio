import 'dart:convert';

import 'package:advisor/data/models/advice_model.dart';
import 'package:http/http.dart' as http;

abstract class AdviceRemoteDatasource {
  /// Requests random advice from API.
  /// Returns [AdviceModel] if successfull.
  /// Throws ServerException if statusCode isn't 200.flutter
  Future<AdviceModel> getRandomAdviceFromApi();
}

class AdviceRemoteDatasourceImpl implements AdviceRemoteDatasource {
  final http.Client _client = http.Client();

  @override
  Future<AdviceModel> getRandomAdviceFromApi() async {
    final http.Response response = await _client.get(
      Uri.https('api.flutter-community.com', '/api/v1/advice'),
      headers: {
        'content-type': 'application/json',
      },
    );

    final dynamic responseBody = json.decode(response.body);
    return AdviceModel.fromJson(responseBody);
  }
}
