import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/Pantallas/Page404.dart';

class MenuDesplegable extends StatefulWidget {
  @override
  State<MenuDesplegable> createState() => _MenuDesplegable();
}

class _MenuDesplegable extends State<MenuDesplegable> {
  String texto = "Angel Anguiano";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.

        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Expanded(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image(image: AssetImage('lib/assets/img/perfil.jpg')),
                )),
                Text(texto),
              ],
            ),
          ),
          ListTile(
            title: const Text('Perfil'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pushNamed(context, 'perfil');
            },
          ),
          ListTile(
            title: const Text('Configuraciones'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
