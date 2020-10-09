import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _createItemsShort()
      ),
    );
  }

  // List<Widget> _createItems() {

  //   List<Widget> listaWidget = new List<Widget>();

  //   for (String opcion in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opcion),
  //     );

  //     listaWidget..add(tempWidget)..add(Divider());
  //   }

  //   return listaWidget;
  // }

  List<Widget> _createItemsShort() {
    return opciones.map((opcion) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(opcion + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.do_not_touch),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }

}
