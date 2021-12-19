import 'package:flutter/material.dart';

class ListTileWG extends StatelessWidget {
  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  ListTileWG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
          //children: _createItems()
          children: _createItemsShort()),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = [];

    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list
        ..add(tempWidget)
        ..add(const Divider());
    }

    return list;
  }

  List<Widget> _createItemsShort() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '|'),
            subtitle: const Text('subtitle'),
            leading: const Icon(Icons.add_location),
            trailing: const Icon(Icons.account_circle_rounded),
            onTap: () {},
          ),
          const Divider()
        ],
      );
    }).toList();
  }
}
