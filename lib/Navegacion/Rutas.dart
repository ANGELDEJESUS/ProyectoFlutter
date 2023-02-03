import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/Pantallas/Perfil.dart';
import 'package:helloworld/main.dart';

class Rutas extends StatelessWidget {
  // rutas disponibles en la app.
  // cada widget es una página diferente.
  String titulo = 'Titulo de Home Page';
  final _routes = {
    '/': (context) => MyHomePage(),
    '/perfil': (context) => Perfil(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      // home: MyHomePage(), //MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      // aquí se asigna el objeto a la propiedad de routes
      routes: _routes,
      onGenerateRoute: (settings) {
        // esta opción se ejecuta cuando se llama una ruta que no existe
        return MaterialPageRoute(
          builder: (context) => Rutas(),
        );
      },
    );
  }
}
