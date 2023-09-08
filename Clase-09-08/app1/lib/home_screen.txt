import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const Icon(Icons.android),
        title: const Text('Myapp'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
    ),
    body: 
      Column(children: [
        Container(
          color:Colors.blueGrey,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Uno',style: TextStyle(fontSize: 25)),
              Text('Dos',style: TextStyle(fontSize: 25)),
              Text('Tres',style: TextStyle(fontSize: 25))
            ]),
        ),
        Container(
          color: Colors.lightGreenAccent,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, size:50, color:Colors.redAccent),
              Icon(Icons.toggle_off,size:50, color: Colors.indigo),
              Icon(Icons.check_box,size:50, color:Colors.deepOrangeAccent)
            ],),
        )
      ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.done_all),
        onPressed: (){
          print('Botón presionado');
          },
      ),
  );

    
  }
}