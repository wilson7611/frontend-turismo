import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';
import '../models/company_model.dart';
import '../models/place_model.dart';
import '../models/route_model.dart';

class ApiService {
  final String baseUrl = 'http://10.0.2.2:8000/api';

  Future<User?> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body)['user']);
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<void> logout(String token) async {
    final response = await http.post(
      Uri.parse('$baseUrl/logout'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to logout');
    }
  }

  Future<List<RouteModel>> fetchRoutes() async {
    final response = await http.get(Uri.parse('$baseUrl/routes'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => RouteModel.fromJson(data)).toList();
    } else {
      print('error al cargar as rutas');
      throw Exception('Failed to load routes');
    }
  }

  Future<List<Company>> fetchCompanies() async {
    final response = await http.get(Uri.parse('$baseUrl/companies'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Company.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load companies');
    }
  }
  

  Future<List<Place>> fetchPlaces(int routeId) async {
    final response = await http.get(Uri.parse('$baseUrl/routes/$routeId/places'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Place.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load places');
    }
  }
  Future<List<Place>> fetchAllPlaces() async {
    final response = await http.get(Uri.parse('$baseUrl/places'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Place.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load places');
    }
  }
}
