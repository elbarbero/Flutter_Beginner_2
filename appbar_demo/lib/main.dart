import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

//NO VA A CAMBIAR
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

//VA A CAMBIAR
class _MyAppState extends State<MyApp> {
  String _title = 'App Bar Demo';
  String _myState = 'NO STATE';

  void _pressed(String message) {
    setState(() {
      //esta es la forma correcta para asignar valores a la variable y que vea
      _myState = message;
    });
    _myState = message; // asi está mal, nunca se mostrara el texto
    print(_myState); //te imprime un mensaje en la consola del IDE
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text(_title),
            actions: <Widget>[
              new Text('Accion'),
              new IconButton(
                  icon: new Icon(Icons.add_alert),
                  onPressed: () {
                    _pressed('mensaje 1');
                  }),
              new IconButton(
                  icon: new Icon(Icons.print),
                  onPressed: () {
                    _pressed('mensaje 2');
                  }),
              new IconButton(
                  icon: new Icon(Icons.people),
                  onPressed: () {
                    _pressed('mensaje 3');
                  }),
              new RaisedButton(
                  child: new Text('Button'),
                  onPressed: () {
                    _pressed('SUPER BUTTON OF DOOM');
                  })
            ],
          ),
          body: new Container(
            padding: const EdgeInsets.all(32.0),
            child: new Center(
              child: new Text(_myState),
            ),
          )),
    );
  }
}
