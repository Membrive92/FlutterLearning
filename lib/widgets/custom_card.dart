import 'package:flutter/material.dart';
import 'package:learning/themes/app_themes.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text("Example's title "),
            subtitle: Text('I am a subtitle'),
            trailing: Icon(
              Icons.pets_outlined,
              color: AppTheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 TextButton(
                     onPressed: () {},
                     child: const Text('Cancel'),

                 ),
                 TextButton(
                     onPressed: () {},
                     child: const Text('Ok')
                 ),
               ],

            ),
          ),
        ],
      ),
    );
  }
}
