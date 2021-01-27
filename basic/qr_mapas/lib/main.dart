import 'package:flutter/material.dart';
import 'package:qr_mapas/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        // 'mapa': (_) => MapaPage(),
      },
    );
  }
}
