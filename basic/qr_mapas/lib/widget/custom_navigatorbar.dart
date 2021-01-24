import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'mapa')
      ],
    );
  }
}
