import 'login_page.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  late String usuario;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ERROR"),
      ),
      body: Center(child: Text("¡ ERROR USUARIO O CONTRASEÑA INCORRECTO ! VUELVE A INTENTARLO ", 
      style: TextStyle(fontSize: 30))),
    );
  }
  }