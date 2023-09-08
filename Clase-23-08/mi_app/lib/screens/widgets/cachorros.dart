// ignore_for_file: unused_field, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, unnecessary_string_interpolations, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cachorros extends StatefulWidget {
  final String _imagen, _nombre, _precio;
  final _estiloNombre = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final _estiloPrecio = TextStyle(fontSize: 12, fontWeight: FontWeight.bold);

  Cachorros(
      {required String imagen, required String nombre, required String precio})
      : _imagen = imagen,
        _nombre = nombre,
        _precio = precio;

  @override
  State<Cachorros> createState() => CachorrosState();
}

class CachorrosState extends State<Cachorros> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin:EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: Colors.redAccent)
      ),
      child: Column(children: [
        Image(image: AssetImage('assets/images/${widget._imagen}')),
        Container(
          child: Column(
              children: [Text(widget._nombre,style: widget._estiloNombre,), Text('\$${widget._precio}',style:widget._estiloPrecio)]),
        )
      ]),
    );
  }
}
