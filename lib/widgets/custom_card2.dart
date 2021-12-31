import 'package:flutter/material.dart';
import 'package:learning/themes/app_themes.dart';



class CustomCard2 extends StatelessWidget {
  const CustomCard2({Key? key, required this.imageUrl, this.name}) : super(key: key);

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children:    [

          FadeInImage(
              image: NetworkImage(imageUrl),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),

        if(name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                        //By default
            child:  Text(name ?? 'Default'),
            //child:  Text(name!),  without value
          )
        ],
      ),
    );
  }
}
