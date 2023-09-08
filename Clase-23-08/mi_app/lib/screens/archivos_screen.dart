// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class ArchivoScreen extends StatelessWidget {
  const ArchivoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla de Archivos"),
        actions: [
          Container(
            margin: EdgeInsets.only(right:10),
            child: Icon(Icons.file_copy),
          )
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Text("Archivos"),
          OutlinedButton(
              child: Text("Volver"),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      )),
    );
  }
}
