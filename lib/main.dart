import 'package:flutter/material.dart';
import 'package:helloworld/MenuDesplegable/MenuDesplegable.dart';
import 'package:helloworld/Navegacion/Rutas.dart';

void main() => runApp(Rutas());
/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}*/

class MyHomePage extends StatelessWidget {
  final String title = 'Flutter Demo Home Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDesplegable(),
      appBar: AppBar(
        // The title text which will be shown on the action bar
        flexibleSpace: null,

        actions: [],
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World hahaha!',
        ),
      ),
    );
  }
}
