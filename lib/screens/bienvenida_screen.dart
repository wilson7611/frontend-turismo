import 'package:flutter/material.dart';
import 'package:frontend_app/screens/login_screen.dart';
import 'routes_screen.dart';
import 'companies_screen.dart';
import 'places_screen.dart';

class BienvenidaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bienvenido')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Título de la app
            Text(
              'Turismo',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 144, 15, 199),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20), // Espacio entre el título y el logo

            // Logo de la app
            Image.asset(
              'assets/images/logo.png', // Asegúrate de tener el logo en la carpeta assets
              width: 350, // Tamaño del logo
              height: 150,
            ),
            SizedBox(height: 30), // Espacio entre el logo y los botones

            // Botón Ver Rutas
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Bordes redondeados
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RoutesScreen()),
                  );
                },
                child: Text(
                  'Ver Rutas',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            // Botón Ver Compañías
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 36),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CompaniesScreen()),
                  );
                },
                child: Text(
                  'Ver Compañías',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            // Botón Ver Lugares
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlacesScreen()),
                  );
                },
                child: Text(
                  'Ver Lugares',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            // Botón Acceso
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  'Acceso',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
