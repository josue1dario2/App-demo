import 'package:flutter/material.dart';
import 'package:proyect_1/src/providers/menu_provider.dart';
import 'package:proyect_1/src/utils/icono_string_util.dart';

import 'alert_page.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

 Widget _lista() {

   return FutureBuilder(
     future: menuProvider.cargarData(),
     initialData: [],
     builder: (BuildContext context ,AsyncSnapshot<List<dynamic>> snapshot){

       return ListView(
         children: _listaItems(snapshot.data!,context),
       );
     },
   );
  }

  List<Widget> _listaItems(List<dynamic> data,BuildContext context) {

    final List<Widget> opciones = [];

    data.forEach((opt) {

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
        onTap: (){

          Navigator.pushNamed(context, opt['ruta']);

        },
      );

      opciones..add(widgetTemp)
              ..add(Divider());
    });

    return opciones;
  }
}