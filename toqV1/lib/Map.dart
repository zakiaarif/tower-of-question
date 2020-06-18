import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiled Map',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  noSuchMethod(Invocation i) => super.noSuchMethod(i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Tutorial'),
      ),
      body: _gridList(),
    );
  }

  //...
  Widget _gridList() {
    return GridView.builder(
      itemCount: 64,
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(0.0),
          child: GestureDetector(
            child: new Image.asset(
              'Assets/Map/map_$index.png',
            ),
            onTap: () {
              _openImage(context, index);
            },
          ),
        );
      },
    );
  }

  _openImage(context, index) async {
    showDialog(
      context: context,
      builder: (a) => AlertDialog(
        title: Text("Location Details"),
        content: new Image.asset(
          'Assets/Map/map_$index.png',
        ),
        actions: <Widget>[
          FlatButton(
              onPressed: () {
                _dismissDialog(context);
              },
              child: Text('Close'))
        ],
      ),
    );
  }

  _dismissDialog(context) {
    Navigator.pop(context);
  }
}