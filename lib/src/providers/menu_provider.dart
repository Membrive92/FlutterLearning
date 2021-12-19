import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class _MenuProvider{

  List<dynamic> options = [];

  _MenuProvider(){
    loadData();

  }

  void loadData() {

    rootBundle.loadString('data/menu_opts.json')
        .then((data) {
          Map dataMap = json.decode(data);
          print (dataMap['nombreApp']);
          options = dataMap['rutas'];
    });

  }

}
final menuProvider = _MenuProvider();