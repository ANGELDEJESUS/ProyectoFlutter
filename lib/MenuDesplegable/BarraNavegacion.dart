import 'package:flutter/material.dart';
import 'package:helloworld/Pantallas/Perfil.dart';

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
        print(_currentIndex);
        if (_currentIndex == 1) {
          setState(() {
            Navigator.pushNamed(context, '/musica');
          });
        }
        if (_currentIndex == 0) {
          setState(() {
            Navigator.pushNamed(context, '/');
          });
        }
        if (_currentIndex == 2) {
          setState(() {
            Navigator.pushNamed(context, '/musica');
          });
        }
      },
      items: [
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
    );
  }
}
