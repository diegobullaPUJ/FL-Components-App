


import 'package:flutter/material.dart';

import 'package:fl_components_app/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon( Icons.photo_album_outlined, color: AppTheme.primary ),
            title: Text('Soy un titulo'),
            subtitle: Text('Sit magna eiusmod magna do minim proident nisi elit amet. Aute ipsum ex laboris ex dolore exercitation ea anim.'),
          ),

          Padding(
            padding: const EdgeInsets.only( right: 5 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('ok'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}