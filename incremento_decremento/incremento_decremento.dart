import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Incremento y Decremento',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Incremento y Decremento'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      _counter+=2;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter-=3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Presiona el boton de + para incrementar 2 unidades y el de - para decrementar 3 unidades',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(mainAxisAlignment:MainAxisAlignment.end,
      children: [FloatingActionButton(onPressed: _incrementCounter,
      tooltip: 'Incrementar',
      child: Icon(Icons.add),),
      FloatingActionButton(onPressed: _decrementCounter,
      tooltip: 'Decrementar',
      child: Icon(Icons.remove))
      ])
    );
  }
}