// lib/models/route_model.dart

class RouteModel {
  final int id;
  final String name;
  final String description;

  RouteModel({required this.id, required this.name, required this.description});

  factory RouteModel.fromJson(Map<String, dynamic> json) {
    return RouteModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }
}
