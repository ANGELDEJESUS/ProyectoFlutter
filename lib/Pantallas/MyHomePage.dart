import 'package:flutter/material.dart';
import 'package:helloworld/MenuDesplegable/BarraMenu.dart';
import 'package:helloworld/MenuDesplegable/BarraNavegacion.dart';
import 'package:helloworld/MenuDesplegable/MenuDesplegable.dart';

class MyHomePage extends StatelessWidget {
  final String title = 'Flutter Demo Home Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDesplegable(),
      bottomNavigationBar: BarraNavegacion(),
      body: Center(
        child: Column(
          children: <Widget>[
            BarraMenu("Home"),
            Text(
              'Hello, World hahaha!',
            ),
          ],
        ),
      ),
    );
  }
}
