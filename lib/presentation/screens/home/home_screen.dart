import 'package:flutter/material.dart';
import 'package:flutter_laboratorio/presentation/screens/home/widgets/menu_drawer.dart'; // Asegúrate de importar el archivo correcto

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Ceutec'),
      ),
      drawer: const MenuDrawer(), // Usamos el MenuDrawer aquí
      body: const Center(
        child: Text(''),
      ),
    );
  }
}
