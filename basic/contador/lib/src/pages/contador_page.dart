import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("stateful"), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'hola mundo',
                style: _estiloTexto,
              ),
              Text(
                '$_conteo',
                style: _estiloTexto,
              )
            ],
          ),
        ),
        floatingActionButton: _bottomBar());
  }

  Widget _bottomBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 20),
        FloatingActionButton(
          onPressed: () {
            _conteo = 0;
            setState(() {});
          },
          child: Icon(Icons.restore),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: () {
            _conteo++;
            setState(() {});
          },
          child: Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () {
            _conteo--;
            setState(() {});
          },
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
