import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/themes/app_themes.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
    
      showCupertinoDialog(
          barrierDismissible: false,
          context: context,
          builder: (context){

            return CupertinoAlertDialog(
                title: const Text("Cupertino"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Alert contain'),
                  SizedBox(height: 10),
                  FlutterLogo(size: 100)
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child:  const Text('Cancel', style: TextStyle( color: Colors.red ))
                ),
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child:  const Text('Ok')
                  )

              ],

            );
          }
      );
    
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('title'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Alert contain'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'))
            ],
          );
        });
  }

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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Show Alert', style: TextStyle(fontSize: 16)),
              ),

              //onPressed: null  it change button to disabled button
             // onPressed: () => displayDialogAndroid(context))),
              onPressed: () => Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIOS(context)
          )
      ),

      floatingActionButton: FloatingActionButton(
          backgroundColor: AppTheme.primary,
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
