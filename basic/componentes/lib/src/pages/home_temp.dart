import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ["uno", "dos", "tres", "cuatro", "cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  List<Widget> _crearItems() {
    return opciones
        .map((e) => Column(
              children: [
                ListTile(
                  title: Text(e),
                  subtitle: Text('demo'),
                  leading: Icon(Icons.account_balance_wallet),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider()
              ],
            ))
        .toList();
  }
}
