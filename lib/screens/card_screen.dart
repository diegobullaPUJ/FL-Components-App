import 'package:flutter/material.dart';

import 'package:fl_components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarjetas"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: const [
          CustomCardType1(),
          SizedBox( height: 10 ),
          CustomCardType2(imageUrl: 'https://wallpapers.com/images/hd/anime-landscape-background-12xkkc2cnstc3gp2.jpg', name: 'Beautiful anime Scenary Wallpaper', ),
          SizedBox( height: 10 ),
          CustomCardType2(imageUrl: 'https://cdnb.artstation.com/p/assets/images/images/056/614/903/large/deep-voyage-stunning-anime-landscape.jpg?1669693899',),
          SizedBox( height: 10 ),
          CustomCardType2(imageUrl: 'https://images3.alphacoders.com/133/1338664.png',),
          SizedBox( height: 100 ),
        ],
      ),
    );
  }
}
