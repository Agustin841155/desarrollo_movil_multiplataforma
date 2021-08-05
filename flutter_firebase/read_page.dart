import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ReadPage extends StatefulWidget {
  ReadPage({Key? key}) : super(key: key);

  @override
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  List<String> items = [];
  bool reading = true;


  Future<void> readData() async{
    try{
      var url = Uri.parse("https://loginflutter-c2c50-default-rtdb.firebaseio.com/agenda.json");

      var response = await http.get(url);
      var data = json.decode(response.body);

      items.clear();
      data.forEach((key, value){
        items.add(value["nombre"]);
        items.add(value["email"]);
      });
      setState(() {
        reading=false;
      });
    } catch(e){
      print(e.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('READ'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index){
          return Container(
            child: Text(items[index]),
          );
        }
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [FloatingActionButton(
      onPressed: _read,
      tooltip: 'READ DATA',
      child: Text("READ DATA"),),
      FloatingActionButton(onPressed:(){
            Navigator.popAndPushNamed(context, 'write');
          },
      tooltip: 'WRITE',
      child: Text("WRITE"),),
      ])
    );
  }

  void _read(){
    readData();
  }
}