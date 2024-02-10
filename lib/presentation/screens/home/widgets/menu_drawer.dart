import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Noticias'),
            onTap: () {
              context.go('/noticias');
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('El cambio de monedas'),
            onTap: () {
              context.go('/divisas');
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Tareas'),
            onTap: () {
              context.go('/tareas');
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: const Text('Podcast'),
            onTap: () {
              context.go('/podcast');
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}
