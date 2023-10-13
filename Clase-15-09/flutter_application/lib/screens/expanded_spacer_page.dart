// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class ExpandedSpacerPage extends StatelessWidget {
  const ExpandedSpacerPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded y Spaced',),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            height:50,
            child: Text('Ancho:'+size.width.round().toString()),
            ),
          Flexible(child: Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 100,
            child: Row(children: [
              Expanded(flex:1,child: ExampleBox(color: 0xff0000ff,text: '12',)),
              ExampleBox(color: 0xffe11c5f,text: '34',),
              ExampleBox(color: 0xff9625aa, text: '56'),
              Expanded(child: ExampleBox(color: 0xffc6d436, text: '78'))
            ]),
          )),

        ]),
      ),
    );
  }
}

class ExampleBox extends StatelessWidget {
  const ExampleBox({
    required this.color,
    required this.text,
    super.key,
  });

  final int color; final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: double.infinity,
      color: Color(this.color),
      alignment: Alignment.center,
      child: Text(this.text,style:TextStyle(color:Colors.black87,fontWeight: FontWeight.bold,fontSize: 14)),
    );
  }
}