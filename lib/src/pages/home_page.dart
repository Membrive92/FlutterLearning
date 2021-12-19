
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

   Widget _list() {

    return FutureBuilder(
       future: menuProvider.loadData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {

      print('_list');
      print( snapshot.data);

      return ListView(
        children: _listItems( snapshot.data),
         );
      },
     );
  }

  List<Widget> _listItems(List<dynamic>? data) {

    final List<Widget> options = [];

    for (var opt in data!) {

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: const Icon(Icons.account_circle),
        trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){
          
        },
      );
        options..add( widgetTemp )
               ..add( const Divider() );
    }
    return options;
  }

}
