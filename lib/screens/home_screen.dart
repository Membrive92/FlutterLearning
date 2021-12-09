import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    const fontSize30 =  TextStyle( fontSize: 30);

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Homescreen'),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: const [
            Text('Clicks Number', style: fontSize30 ),
            Text('5', style: fontSize30),


            ]),
        ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, size: 42.0),
        onPressed: () {
          print('Me has pulsado');
        },
        
      ) ,
    );


  }

}