import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:helloworld/Componentes/Inputs.dart';
import 'package:helloworld/MenuDesplegable/BarraMenu.dart';
import 'package:helloworld/MenuDesplegable/BarraNavegacion.dart';
import 'package:helloworld/MenuDesplegable/MenuDesplegable.dart';

class FormularioHome extends StatefulWidget {
  @override
  _FormularioHome createState() => _FormularioHome();
}

class _FormularioHome extends State<FormularioHome> {
  final String title = 'Flutter Demo Home Page';
  void _builder() {
    StepState.disabled;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Text("AAAAA", style: TextStyle(fontFamily: 'bold', fontSize: 25)),
          Inputs("Nombre Completo"),
          Inputs("Apellido 1"),
          Inputs("Apellido 2"),
          Inputs(""),
        ],
      ),
    );
  }
}
