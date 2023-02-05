import 'package:flutter/material.dart';
import 'package:helloworld/MenuDesplegable/BarraMenu.dart';
import 'package:helloworld/MenuDesplegable/MenuDesplegable.dart';

class Configuraciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          children: <Widget>[
            BarraMenu("Configuraciones"),
            Text("Datos de configuraciones")
          ],
        )),
      ),
    );
  }
}
