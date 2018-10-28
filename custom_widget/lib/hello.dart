import 'package:flutter/material.dart';

class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.all(5.0),
        child: new Column(children: <Widget>[
          new Text("------------------"),
          new Text("new Row"),
          new Text(" Contaier3"),
          new Text("!!!"),
        ]),
      );
  }
}
