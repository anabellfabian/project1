import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 102, 157, 219),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 10, 32, 105),
                    radius: 20,
                    child: Icon(Icons.menu,
                        color: const Color.fromARGB(255, 245, 245, 245)),
                  ),
                  Expanded(
                    child: Text(
                      'Universidad de Ciencias de la Computación',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.person, color: Colors.white),
                    label: Text('Acceso'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 10, 32, 105),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    final items = [
                      {'icon': Icons.person_add, 'label': 'Registrar alumno'},
                      {'icon': Icons.group, 'label': 'Administrar grupos'},
                      {
                        'icon': Icons.description,
                        'label': 'Boletas de alumnos'
                      },
                      {'icon': Icons.book, 'label': 'Registrar materias'},
                      {'icon': Icons.school, 'label': 'Administrar docentes'},
                      {
                        'icon': Icons.bar_chart,
                        'label': 'Gráficas de crecimiento'
                      },
                      {'icon': Icons.schedule, 'label': 'Horarios de clase'},
                      {'icon': Icons.print, 'label': 'Imprimir horarios'},
                    ];

                    return _buildOptionCard(
                      icon: items[index]['icon'] as IconData,
                      label: items[index]['label'] as String,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard({
    required IconData icon,
    required String label,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: const Color.fromARGB(255, 10, 32, 105),
          ),
          SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
