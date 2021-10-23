
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
           _cardTipo1()
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Título de la tarjeta card!!'),
            subtitle: Text('Los subtítulos son los textos que aparecen en el borde inferior de una imagen, con frecuencia superpuesto a ella, aportando información adicional sobre esta o traduciendo una narración o diálogo hablado en un idioma diferente.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: (){

                },
              ),
               FlatButton(
                 child: Text('Cancel'),
                 onPressed: (){

               },
               )
            ],
          )
        ],
      ),
    );
  }
}

