import 'package:flutter/material.dart';

import 'package:fl_components_app/themes/app_theme.dart';
import 'package:fl_components_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOption; 

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  const Text('Componentes en Flutter')
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          title: Text(menuOptions[i].name),
          leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
          trailing: const Icon( Icons.arrow_forward_ios_outlined, color: AppTheme.primary ),  
          onTap: () {
            Navigator.pushNamed(context, menuOptions[i].route);
          },
        ),
        separatorBuilder: ( _ , __ ) => const Divider(), 
        itemCount: menuOptions.length
      )
    ); 
  }
}