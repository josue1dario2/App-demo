
import 'package:flutter/material.dart';
import 'package:proyect_1/src/pages/alert_page.dart';
import 'package:proyect_1/src/pages/animated_container.dart';
import 'package:proyect_1/src/pages/avatar_page.dart';
import 'package:proyect_1/src/pages/card_page.dart';
import 'package:proyect_1/src/pages/home_page.dart';
import 'package:proyect_1/src/pages/input_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    'alert': (BuildContext context) => const AlertPage(),
    'avatar': (BuildContext context) => const AvatarPage(),
    'card': (BuildContext context) => const CardPage(),
    'animatedContainer': (BuildContext context) => const AnimatedContainerPage(),
    'inputs': (BuildContext context) => const InputPage(),
  };

}

