import 'dart:html';

import 'package:flutter/material.dart';

class BarraMenu extends StatelessWidget {
  String titulo;
  BarraMenu(this.titulo);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // The title text which will be shown on the action bar
      flexibleSpace: null,
      centerTitle: true,
      actions: [],
      title: Text(titulo),
    );
  }
}
