import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class ConfiguracionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('draggablescrollablesheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Página de draggablescrollablesheet'),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      color: Colors.grey[200],
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            title: Text('bob esponja pantalones cuadrados'),
                          ),
                          ListTile(
                            title: Text('bts'),
                          ),
                          ListTile(
                            title: Text('pokemones'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text('Mostrar Hoja Desplegable'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConfiguracionPage(),
    );
  }
}
