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
          children: _listaItems(snaphot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    return data.map((e) {
      return ListTile(
        title: Text(e["texto"]),
        leading: getIcon(e["icon"]),
        trailing: Icon(Icons.keyboard_arrow_right),
      );
    }).toList();
  }
}
