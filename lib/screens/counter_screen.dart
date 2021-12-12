import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {


    const fontSize30 =  TextStyle( fontSize: 30);


    return  Scaffold(
      appBar: AppBar(
        title: const Text('Counterscreen'),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text('Clicks Number', style: fontSize30 ),
            Text('$counter', style: fontSize30),


            ]),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined, size: 42.0),
            onPressed: () {

              counter++;
              setState(() {
              });
            },

          ),




          FloatingActionButton(
            child: const Icon(Icons.exposure_zero_outlined, size: 42.0),
            onPressed: () {

              counter=0;
              setState(() {
              });
            },

          ),


          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined, size: 42.0),
            onPressed: () {

              counter--;
              setState(() {
              });
            },

          )
        ],
      ) ,
    );


  }
}