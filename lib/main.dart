import 'package:flutter/material.dart';
import 'package:proyect_1/src/pages/alert_page.dart';
import 'package:proyect_1/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Componentes App',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings setting){
          return MaterialPageRoute(
            builder: (context) => AlertPage()
          );
      },
    );
  }
}


