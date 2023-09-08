import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Scaffold es el widget que permite retornar una "pantalla"
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.android),
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(child: Text('Hola mundo'),),  
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: (){
          print('el botón funciona por la consola');
        },
      ),
    );
    

  }
}