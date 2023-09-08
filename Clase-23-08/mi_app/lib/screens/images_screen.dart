// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mi_app/screens/widgets/cachorros.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla de imágenes"),
      ),
      body: Center(
        child: Container(
          height: 600,
          child: ListView(
            children: [
              Cachorros(imagen: 'img1.jpeg', nombre: 'imagen1', precio: '500'),
              Cachorros(imagen: 'img2.jpeg', nombre: 'imagen2', precio: '500'),
              Cachorros(imagen: 'img3.jpeg', nombre: 'imagen3', precio: '600'),
              Cachorros(imagen: 'img5.jpg', nombre: 'imagen4', precio: '650'),
              Cachorros(imagen: 'img6.jpg', nombre: 'imagen5', precio: '600'),
              Cachorros(imagen: 'img7.jpg', nombre: 'imagen6', precio: '700'),
              Cachorros(imagen: 'img8.jpg', nombre: 'imagen7', precio: '800')
            ],
          ),
        ),
      ),
    );
  }
}
