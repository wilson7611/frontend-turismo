import 'package:flutter/material.dart';
import 'package:frontend_app/screens/bienvenida_screen.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white, // Color de fondo
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Nombre de la aplicación
            Text(
              'Turismo',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Color del texto
              ),
            ),
            SizedBox(height: 20), // Espaciado
            // Logo de la aplicación
            Image.asset(
              'assets/images/logo.png', // Asegúrate de tener el logo en la carpeta 'assets'
              width: 250, // Ancho del logo
              height: 250, // Alto del logo
            ),
            SizedBox(height: 20), // Espaciado
            // Botón para acceder a la aplicación
            ElevatedButton(
              style: ElevatedButton.styleFrom(
             
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0), // Padding del botón
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Bordes redondeados
                ),
              ),
              onPressed: () {
                // Redirige a la pantalla de bienvenida
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => BienvenidaScreen()),
                );
              },
              child: Text(
                'Acceder a la App',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white, // Color del texto del botón
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (buildContext) => BienvenidaScreen())
                );
              },
              
              style: ElevatedButton.styleFrom(  
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20.0),
                backgroundColor: Colors.blue
              ),
  
              child: const Icon(Icons.chevron_right, color: Colors.white, size: 30,),
              
            ),
          ],
        ),
      ),
    );
  }
}
