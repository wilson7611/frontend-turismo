// lib/screens/places_screen.dart

import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/place_model.dart';

class PlacesScreen extends StatefulWidget {
  @override
  _PlacesScreenState createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  final ApiService apiService = ApiService();
  List<Place> places = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadAllPlaces();
  }

  void _loadAllPlaces() async {
    try {
      final data = await apiService.fetchAllPlaces();
      setState(() {
        places = data;
        isLoading = false;
      });
    } catch (e) {
      print('Error al cargar los lugares: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lugares')),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: places.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(places[index].name),
                  subtitle: Text(places[index].description ?? 'Sin descripción'),
                );
              },
            ),
    );
  }
}
