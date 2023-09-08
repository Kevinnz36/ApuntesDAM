// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class botonScreen extends StatefulWidget {
  const botonScreen({super.key});

  @override
  State<botonScreen> createState() => _botonScreenState();
}

class _botonScreenState extends State<botonScreen> {
  int _numero = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo de la pantalla'),
      ),
      body: Column(
        children: [
        Container(
          child: Text('Valor: $_numero'),
        ),
        Row(
          children: [
            OutlinedButton(
              onPressed: (){
                _numero++;
                setState(() {
                  
                });
              }, child: null,
              )
          ],
        )
      ]),
    );
  }
}