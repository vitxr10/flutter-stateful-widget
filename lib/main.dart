import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var cont = 0;
  var texto='vc clicou 0 vezes';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Exemplo'),
        ),
        body: Center(
          child: Text(texto),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (cont < 10){
                cont++;
                texto = 'vc clicou $cont vezes';
              }
              else{
                texto = 'JÁ BASTA!!!';
              }
              
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

