// lib/screens/login_screen.dart

import 'package:flutter/material.dart';
import '../services/api_service.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final ApiService apiService = ApiService();

  void _login() async {
    try {
      await apiService.login(_emailController.text, _passwordController.text);
      Navigator.pushNamed(context, '/home');
    } catch (e) {
      print(e);
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: _login,
              child: Text('Acceder'),
            ),
          ],
        ),
      ),
    );
  }
}
