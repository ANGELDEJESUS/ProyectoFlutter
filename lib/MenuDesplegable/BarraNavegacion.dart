import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/Componentes/Steps.dart';
import 'package:helloworld/MenuDesplegable/BarraMenu.dart';
import 'package:helloworld/MenuDesplegable/MenuDesplegable.dart';
import 'package:helloworld/Pantallas/MyHomePage.dart';
import 'package:helloworld/Pantallas/Perfil.dart';

class BarraNavegacion extends StatefulWidget {
  @override
  _BarraNavegacion createState() => _BarraNavegacion();
}

class _BarraNavegacion extends State<BarraNavegacion> {
  int _currentIndex = 0;
  String encabezado = "Home";
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        encabezado = "Home";
      }
      if (_currentIndex == 1) {
        encabezado = "Musica";
      }
      if (_currentIndex == 2) {
        encabezado = "Maps";
      }
    });
  }

  List<Widget> _pages = <Widget>[
    Steps(),
    Icon(
      Icons.watch_rounded,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final _scrollController = ScrollController();
    final _listItems = List.generate(1, (index) => "Item $index");
    return Scaffold(
      drawer: MenuDesplegable(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Color(0xff232225),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.amber.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 12,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: "Videos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Noticias",
          ),
        ],
        currentIndex: _currentIndex,
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(child: BarraMenu(encabezado)),
            ],
          ),
          Expanded(child: _pages.elementAt(_currentIndex)),
        ],
      )), /*ListView.builder(
          controller: _scrollController,
          itemCount: _listItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              BarraMenu(encabezado),
              _pages.elementAt(_currentIndex)
            ]);
          }),*/
    );
  }
}
