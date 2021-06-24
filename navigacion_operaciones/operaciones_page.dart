import 'package:flutter/material.dart';

class OperacionesPage extends StatefulWidget {
 OperacionesPage({Key key}) : super(key: key);

  @override
   OperacionesPageState createState() =>  OperacionesPageState();
}

class  OperacionesPageState extends State<OperacionesPage> {

  int _result = 0;
  int num1 = 0;
  int num2 = 0;

  final numero1 = TextEditingController();
  final numero2 = TextEditingController();
  
  @override
  void dispose(){
    numero1.dispose();
    numero2.dispose();
    super.dispose();
  }
  void _suma(){
    setState(() {
      num1 = int.parse(numero1.text);
      num2 = int.parse(numero2.text);
      _result= num1 + num2;
    });
  }
  void _resta(){
    setState(() {
      num1 = int.parse(numero1.text);
      num2 = int.parse(numero2.text);
      _result= num1 - num2;
    });
  }
  void _multiplicacion(){
    setState(() {
      num1 = int.parse(numero1.text);
      num2 = int.parse(numero2.text);
      _result= num1 * num2;
    });
  }
  void _division(){
    setState(() {
      num1 = int.parse(numero1.text);
      num2 = int.parse(numero2.text);
      _result= num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operaciones Basicas"),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Text("Ingrese un numero")),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: TextField(
              controller: numero1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingresa el numero 1'
              ),
          
              onChanged: (text){
                print("$text");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Text("Ingrese un numero")),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: TextField(
              controller: numero2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingresa el numero 2'
              ),
              onChanged: (text){
                print("$text");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Text("El resultado es: $_result", style: TextStyle(fontSize: 25))),
        ],
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [FloatingActionButton(onPressed: _suma,
      tooltip: 'Sumar',
      child: Icon(Icons.add),),
      FloatingActionButton(onPressed: _resta,
      tooltip: 'Resta',
      child: Icon(Icons.remove),),
      FloatingActionButton(onPressed: _multiplicacion,
      tooltip: 'Multiplicacion',
      child: Text('X'),),
      FloatingActionButton(onPressed: _division,
      tooltip: 'Division',
      child: Text('/'),)
      ])
      );
  }
}