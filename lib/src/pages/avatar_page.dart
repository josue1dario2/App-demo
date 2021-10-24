
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget{
  const AvatarPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: [
          Container(
            padding: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_5JPSJcB2udWU9KOdesKQCgwgVm4602lbVAvm9iPBIYGW0aCe5Yp8emVKymcGFYioqp0&usqp=CAU'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
              child: Text('JS'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      body: const Center(
         child: FadeInImage(
           image: NetworkImage('https://www.lavanguardia.com/files/og_thumbnail/uploads/2020/08/14/5faa7250e5d25.jpeg'),
           placeholder: AssetImage('assets/jar-loading.gif'),
           fadeInDuration: Duration(milliseconds: 200),
         ),
      ),
    );
  }
}