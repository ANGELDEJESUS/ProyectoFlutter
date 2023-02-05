import 'dart:html';

import 'package:flutter/material.dart';

class BarraNavegacion extends StatefulWidget {
  @override
  _BarraNavegacion createState() => _BarraNavegacion();
}

class _BarraNavegacion extends State<BarraNavegacion> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      backgroundColor: Color(0xff232225),
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.amber.withOpacity(0.6),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
        setState(() => _currentIndex = value);
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Musica",
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
    );
  }
}
