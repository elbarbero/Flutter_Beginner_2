import 'package:flutter/material.dart';

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
                        new Container(
                          padding: const EdgeInsets.all(5.0),
                          child: new Column(children: <Widget>[
                            new Text("------------------"),
                            new Text("new Row"),
                            new Text(" Contaier1"),
                            new Text("!!!"),
                          ]),
                        ),
                        new Container(
                          padding: const EdgeInsets.all(5.0),
                          child: new Column(children: <Widget>[
                            new Text("------------------"),
                            new Text("new Row"),
                            new Text(" Contaier2"),
                            new Text("!!!"),
                          ]),
                        ),
                        new Container(
                          padding: const EdgeInsets.all(5.0),
                          child: new Column(children: <Widget>[
                            new Text("------------------"),
                            new Text("new Row"),
                            new Text(" Contaier3"),
                            new Text("!!!"),
                          ]),
                        )
                      ])
                ],
              ),
            ),
          ),
        ));
  }
}
