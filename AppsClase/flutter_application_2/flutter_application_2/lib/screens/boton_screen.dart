import "package:flutter/material.dart";

  class botonScreen extends StatefulWidget {
    const botonScreen({super.key});
  
    @override
    State<botonScreen> createState() => _botonScreenState();
  }
  
  class _botonScreenState extends State<botonScreen> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo StatefulWidget'),
        ),
        body: Text('Hola Mundo'),
      );
    }
  }