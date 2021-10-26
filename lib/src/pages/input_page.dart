
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget{
  const InputPage({Key? key}) : super(key: key);


    @override
    _InputPageState createState ()=> _InputPageState();

}

class _InputPageState extends State<InputPage>{

  String _nombre = "";
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs de texto'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.00),
        children: [
          _crearInput(),
          const Divider(),
          _crearEmail(),
          const Divider(),
          _crearPassword(),
          const Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {

    return TextField(
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: const Icon(Icons.accessibility),
        icon: const Icon(Icons.account_circle),

      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona() {

    return ListTile(
      title: Text('El nombre es : $_nombre'),
      subtitle: Text('Email : $_email'),
    );
  }

  Widget _crearEmail() {

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: const Icon(Icons.alternate_email),
        icon: const Icon(Icons.email),

      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassword() {

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: const Icon(Icons.lock_open),
        icon: const Icon(Icons.lock),

      ),
      onChanged: (valor){
        setState(() {
          _password = valor;
        });
      },
    );
  }
}