// lib/screens/companies_screen.dart

import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/company_model.dart';

class CompaniesScreen extends StatefulWidget {
  @override
  _CompaniesScreenState createState() => _CompaniesScreenState();
}

class _CompaniesScreenState extends State<CompaniesScreen> {
  final ApiService apiService = ApiService();
  List<Company> companies = [];

  @override
  void initState() {
    super.initState();
    _loadCompanies();
  }

  void _loadCompanies() async {
    final data = await apiService.fetchCompanies();
    setState(() {
      companies = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Compañías')),
      body: ListView.builder(
        itemCount: companies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(companies[index].name),
            subtitle: Text(companies[index].address),
          );
        },
      ),
    );
  }
}
