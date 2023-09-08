// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, use_key_in_widget_constructors

import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {

  final estiloTextRow =  TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.android),
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xffD6EBED),
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[ //children permite agregar varios elementos a diferencia de child
                Text('Uno',style: estiloTextRow),
                Text('Dos',style: estiloTextRow),
                Text('Tres',style: estiloTextRow),
                Text('Cuatro',style: estiloTextRow),

              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Icon(Icons.home, size: 50,color:Colors.amber),
              Icon(Icons.face, size: 50,color:Colors.blue),
              Icon(Icons.favorite, size: 50,color:Colors.orange),
              Icon(Icons.pets, size: 50,color:Colors.yellowAccent),
              Icon(Icons.savings, size: 50,color:Color(0xffC10037)),

            ],
          )
        ],
      ),//1
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