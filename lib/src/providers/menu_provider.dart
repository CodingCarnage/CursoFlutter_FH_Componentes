import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    loadData();
  }

  loadData() {
    rootBundle.loadString('data/menu_options.json').then((data) {
      Map dataMap = json.decode(data);
      print(dataMap['rutas']);
      opciones = dataMap['rutas'];
    });
  }
}

final _MenuProvider menuProvider = new _MenuProvider();