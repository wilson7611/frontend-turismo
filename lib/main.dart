// lib/main.dart

import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'config/theme/app_theme.dart';
import 'screens/inicio_screen.dart';
import 'screens/bienvenida_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppTour',
      theme: AppTheme().theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/bienvenida': (context) => BienvenidaScreen(),
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/': (context) => SplashScreen(),
      },
    );
  }
}
