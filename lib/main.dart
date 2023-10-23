import 'package:evaluacion3_nayeli/singlechildscrollview.dart';
import 'package:flutter/material.dart';

import 'customscrollview.dart';
import 'draggablescrollablesheet.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/customscrollview': (context) => InicioPage(),
        '/singlechildscrollview': (context) => ConfiguracionPage(),
        '/draggablescrollablesheet': (context) => AcercaDePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación eval3'),
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
            accountName: Text('hellsel nayeli portillo cubillas'),
            accountEmail: Text('hellselnayeli@hotmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
          ),
          ListTile(
            leading: Icon(Icons.view_array),
            title: Text('customscrollview'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú
              Navigator.of(context).pushNamed('/customscrollview');
            },
          ),
          ListTile(
            leading: Icon(Icons.single_bed_sharp),
            title: Text('singlechildscrollview'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú
              Navigator.of(context).pushNamed('/draggablescrollablesheet');
            },
          ),
          ListTile(
            leading: Icon(Icons.drag_handle_sharp),
            title: Text('draggablescrollablesheet'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú
              Navigator.of(context).pushNamed('/singlechildscrollview');
            },
          ),
        ],
      ),
    );
  }
}
