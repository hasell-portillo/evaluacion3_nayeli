import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SingleChildScrollView'),
        ),
        body: MySingleChildScrollView(),
      ),
    );
  }
}

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            color: Colors.blue,
          ),
          Container(
            height: 200.0,
            color: Colors.green,
          ),
          Container(
            height: 200.0,
            color: Colors.orange,
          ),
          Container(
            height: 200.0,
            color: Colors.red,
          ),
          Container(
            height: 200.0,
            color: Colors.purple,
          ),
          Container(
            height: 200.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

class AcercaDePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('singlechildscrollview'),
      ),
      body: MySingleChildScrollView(),
    );
  }
}
