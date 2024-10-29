// lib/models/place.dart

class Place {
  final int id;
  final String name;
  final String description;
  final String? imageUrl;

  Place({required this.id, required this.name, required this.description, this.imageUrl});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['image_url'],
    );
  }
}
