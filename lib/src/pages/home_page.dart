import 'package:flutter/material.dart';
import 'package:learning/src/providers/menu_provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _list(),
    );
  }

  _list() {
    print(menuProvider.options);
    return ListView(
      children: _listItems(),
    );
  }

  List<Widget> _listItems() {
    return [
      ListTile(title: Text('Hello world')),
      Divider(),
      ListTile(title: Text('Hello world')),
      Divider(),
      ListTile(title: Text('Hello world')),
    ];
  }
}
