
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget{
  const SliderPage({Key? key}) : super(key: key);


  @override
  _SliderPageState createState() => _SliderPageState();

}

class _SliderPageState extends State<SliderPage>{

  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            Expanded(
                child: _crearImagen()
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor){
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearImagen() {

    return Image(
      image: NetworkImage('data:image/png;base64,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'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}