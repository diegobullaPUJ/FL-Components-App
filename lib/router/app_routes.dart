
import 'package:flutter/material.dart';
import 'package:fl_components_app/screens/screens.dart';
import 'package:fl_components_app/models/models.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(route: 'listView1',       name: 'List View Tipo 1',                screen: const ListView1Screen(),       icon: Icons.list_alt_outlined),
    MenuOption(route: 'listView2',       name: 'List View Tipo 2',                screen: const ListView2Screen(),       icon: Icons.list_outlined),
    MenuOption(route: 'alert',           name: 'Alertas',                         screen: const AlertScreen(),           icon: Icons.add_alert_outlined),
    MenuOption(route: 'cards',           name: 'Tarjetas',                        screen: const CardScreen(),            icon: Icons.credit_card_outlined),
    MenuOption(route: 'avatar',          name: 'Avatar',                          screen: const AvatarScreen(),          icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated',        name: 'Contenedor Animado',              screen: const AnimatedScreen(),        icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs',          name: 'Text Inputs',                     screen: const InputsScreen(),          icon: Icons.input_outlined),
    MenuOption(route: 'slider',          name: 'Slider && Checks',                screen: const SliderScreen(),          icon: Icons.photo_size_select_large_outlined),
    MenuOption(route: 'listviewbuilder', name: 'infiniteScrol & pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),

  ];       

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

      for (var element in menuOption) {
        appRoutes.addAll({ element.route : ( BuildContext context ) => element.screen });   
      }

    return appRoutes;
  }
 
  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'      : (BuildContext context) => const HomeScreen(),
  //       'ListView1' : (BuildContext context) => const ListView1Screen(),
  //       'ListView2' : (BuildContext context) => const ListView2Screen(),
  //       'alert'     : (BuildContext context) => const AlertScreen(),
  //       'card'      : (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute( RouteSettings settings ) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }

}