import 'package:flutter/material.dart';
import 'package:learning/screens/screens.dart';
import '/screens/screens.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        centerTitle: true,
        elevation: 0,

      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.arrow_forward),
            title: const Text('Route name'),
            onTap: () {

          /*    final route = MaterialPageRoute(
                  builder: (context) => const ListView2Screen());
              Navigator.push(context, route);*/

              Navigator.pushNamed(context, 'card');

              
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 100)
    );
  }
}
