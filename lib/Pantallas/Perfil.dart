import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/MenuDesplegable/BarraMenu.dart';
import 'package:helloworld/MenuDesplegable/MenuDesplegable.dart';

class Perfil extends StatelessWidget {
  String texto = "Angel Anguiano";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          children: <Widget>[BarraMenu("Perfil"), Text("Datos de Perfil")],
        )),
      ),
    );
  }
}
