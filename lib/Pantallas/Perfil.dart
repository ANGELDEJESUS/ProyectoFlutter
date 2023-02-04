import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/MenuDesplegable/BarraMenu.dart';
import 'package:helloworld/MenuDesplegable/MenuDesplegable.dart';

class Perfil extends StatelessWidget {
  String texto = "Angel Anguiano";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDesplegable(),
      body: Container(
          child: Column(
        children: <Widget>[Text("data")],
      )),
    );
  }
}
