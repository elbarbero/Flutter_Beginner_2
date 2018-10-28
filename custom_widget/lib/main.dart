import 'package:flutter/material.dart';
import 'package:custom_widget/hello.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Basic Layouts",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Basics Layouts"),
          ),
          body: new Container(
            padding: const EdgeInsets.all(32.0),
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new Text("------------------"),
                  new Text("new Column"),
                  new Text(" Column"),
                  new Text("!!!"),
                  //cada "new Text("World")," es una clumna nueva
                  new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text("------------------"),
                        new Text("new Row"),
                        new Text(" Row"),
                        new Text("!!!")
                      ]),
                  new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new hello(),
                        //llamamos a la otra clase, ya tiene un widget creado
                        new hello(),
                        //llamamos a la otra clase, ya tiene un widget creado
                        new hello(), //llamamos a la otra clase, ya tiene un widget creado
                      ])
                ],
              ),
            ),
          ),
        ));
  }
}
