import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  Future<List<dynamic>> loadData() async {
    final String data = await rootBundle.loadString('data/menu_options.json');

    Map dataMap = json.decode(data);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final _MenuProvider menuProvider = new _MenuProvider();
