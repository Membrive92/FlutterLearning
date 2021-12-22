import 'package:flutter/material.dart';


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

            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 100)
    );
  }
}
