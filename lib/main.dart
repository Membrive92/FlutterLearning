import 'package:flutter/material.dart';
import 'package:learning/src/pages/home_temp.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       title: 'Component App',
      debugShowCheckedModeBanner: false,
      home:  HomePageTemp()
      );
  }
}





