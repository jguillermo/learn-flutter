import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snaphot) {
        return ListView(
          children: _listaItems(snaphot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    return data.map((e) {
      return ListTile(
        title: Text(e["texto"]),
        leading: getIcon(e["icon"]),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          //final route = MaterialPageRoute(builder: (context) {
          //return AlertPage();
          //});
          //Navigator.push(context, route);
          Navigator.pushNamed(context, e["ruta"]);
        },
      );
    }).toList();
  }
}
