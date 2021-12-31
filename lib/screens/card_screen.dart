import 'package:flutter/material.dart';
import 'package:learning/widgets/custom_card2.dart';
import 'package:learning/widgets/widgets.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard(),
            SizedBox(height: 10),
            CustomCard2(name:'A landscape' ,imageUrl: 'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/130238819/original/d4096d4950eba421600f21c6c753c19375222eb6/draw-you-a-landscape-image-with-ms-paint.png'),
            SizedBox(height: 10),
            CustomCard2(imageUrl: 'https://i1.adis.ws/i/canon/canon-pro-ambassador-exchange-landscapes-1-1140?w=1140&qlt=70&fmt=jpg&fmt.options=interlaced&bg=rgb(255,255,255)'),
          ]),
    );
  }
}

