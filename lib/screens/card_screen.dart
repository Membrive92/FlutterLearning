import 'package:flutter/material.dart';
import 'package:learning/themes/app_themes.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card widget"),
         centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children:  [

          Card(
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
                  title: Text("Example's title "),
                  subtitle: Text('I am a subtitle'),
                  trailing: Icon(Icons.pets_outlined, color: AppTheme.primary,),

                )
              ],
            ),
          )


        ]
        ),
    );
  }
}
