
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{

  final opciones = ['uno','dos','tres','cuatro','cinco','seis','siete','ocho','nueve','diez',
  'once','doce','trece','catorce','quince','dieciséis','diecisiete','dieciocho','diecinueve','veinte'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItems()
          children: _crearItemsCorto()
     ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = <Widget>[];

    for (String opt in opciones){

      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
           ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorto(){

    return opciones.map((item){

    return Column(
      children: <Widget>[
        ListTile(
          title: Text(item +'!'),
          subtitle: Text('Cualquier cosa'),
          leading: Icon(Icons.account_box),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){},
        ),
        Divider()
      ],
    );

    }
    ).toList();

  }

}