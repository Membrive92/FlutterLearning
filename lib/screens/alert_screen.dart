import 'package:flutter/material.dart';
import 'package:learning/themes/app_themes.dart';


class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
           /* style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: const StadiumBorder(),
              elevation: 0
            ), This styles replace the apptheme */

            child: const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child:  Text('Show Alert', style: TextStyle(fontSize: 16)),
            ),

            //onPressed: null  it change button to disabled button
            onPressed: () {

            },

          ),

        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },

      ),
      );
  }
}
