import 'package:flutter/material.dart';
import 'inicio.dart';
import 'configuracion.dart';
import 'acerca_de.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {
        '/inicio': (context) => InicioPage(),
        '/configuracion': (context) => ConfiguracionPage(),
        '/acerca_de': (context) => AcercaDePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación Flutter'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Contenido de la pantalla principal'),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Usuario de Ejemplo'),
            accountEmail: Text('usuario@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú
              Navigator.of(context).pushNamed('/inicio');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuración'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú
              Navigator.of(context).pushNamed('/configuracion');
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Acerca de'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú
              Navigator.of(context).pushNamed('/acerca_de');
            },
          ),
        ],
      ),
    );
  }
}
