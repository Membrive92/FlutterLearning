import 'package:flutter/material.dart';



class CustomCard2 extends StatelessWidget {
  const CustomCard2({Key? key}) : super(key: key);



  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children:  const [

          FadeInImage(
              image: NetworkImage('https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/130238819/original/d4096d4950eba421600f21c6c753c19375222eb6/draw-you-a-landscape-image-with-ms-paint.png'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          )
        ],
      ),
    );
  }
}
