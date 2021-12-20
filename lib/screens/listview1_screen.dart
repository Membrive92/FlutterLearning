
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 class ListView1Screen extends StatelessWidget {

   final options = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];

 const ListView1Screen({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
   return  Scaffold(
     body:ListView(
        children:  [
          
          ...options.map((game) =>
               ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                title: Text( game ) ,
              ),
          ).toList()
          
          
          

        ],
     ),
   );
  }
}

