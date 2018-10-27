import 'package:flutter/material.dart';

//ESTE ES EL EJEMPLO QUE VIENE EN LA WEB DE FLUTTER.IO
//SOLO PUEDE HABER UN MAIN, LOGICO
/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}*/

/*void main() {
  runApp(new Center(
    child: new Text(
      "Hello World",
      textDirection: TextDirection.ltr, //el texto va de derecha a izquierda, ltr= 'left to rigth'
    ),
  ));
}*/

void main() {
  runApp(new Center(
    child: new myApp(),
  ));
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hello Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Barra de la App'),
        ),
        body: new Center(
          // child: new Text('Hello World desde el body'),
          child: new RaisedButton(
            onPressed: null,
            child: new Text('My Button'),
          ),
        ),
      ),
    );
  }
}
