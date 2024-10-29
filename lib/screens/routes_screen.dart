// lib/screens/routes_screen.dart

import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/route_model.dart';

class RoutesScreen extends StatefulWidget {
  @override
  _RoutesScreenState createState() => _RoutesScreenState();
}

class _RoutesScreenState extends State<RoutesScreen> {
  final ApiService apiService = ApiService();
  List<RouteModel> routes = [];

  @override
  void initState() {
    super.initState();
    _loadRoutes();
  }

  void _loadRoutes() async {
    final data = await apiService.fetchRoutes();
    setState(() {
      routes = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rutas')),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(routes[index].name),
            subtitle: Text(routes[index].description),
          );
        },
      ),
    );
  }
}
