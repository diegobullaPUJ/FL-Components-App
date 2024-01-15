

import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noelle Silva'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 5 ),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('NS'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 130,
          backgroundImage: NetworkImage('https://pbs.twimg.com/media/FrtbP7IXwAEFCDv.png'),
         )
      ),
    );
  }
}