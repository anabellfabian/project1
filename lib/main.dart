import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.yellow, // Color de fondo amarillo
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icono del menú
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 20,
                    child: Icon(Icons.menu, color: Colors.white),
                  ),
                  // Título y subtítulo centrados
                  Column(
                    children: [
                      Text(
                        'Universidad Tecnológica de Santiago',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'SISTEMA CORPORATIVO',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  // Botón de acceso
                  ElevatedButton.icon(
                    onPressed: () {
                      // Acción del botón
                    },
                    icon: Icon(Icons.person, color: Colors.white),
                    label: Text('Acceso'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green, // Color del texto
                      padding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
