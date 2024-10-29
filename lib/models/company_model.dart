// lib/models/company.dart

class Company {
  final int id;
  final String name;
  final String address;
  final String contact;

  Company({required this.id, required this.name, required this.address, required this.contact});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      contact: json['contact'],
    );
  }
}
