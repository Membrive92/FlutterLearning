import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title: Text(options[index]),
                ),
            separatorBuilder: (_, __) => const Divider(), // with this
            itemCount: options.length));
  }
}
