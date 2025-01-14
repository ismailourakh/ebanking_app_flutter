import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> getData(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response;
    } catch (e) {
      throw Exception('Erreur de connexion : $e');
    }
  }

  Future<Response> postData(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;
    } catch (e) {
      throw Exception('Erreur de connexion : $e');
    }
  }
}
