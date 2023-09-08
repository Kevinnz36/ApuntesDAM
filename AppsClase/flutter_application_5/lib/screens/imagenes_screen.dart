import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/personajes.dart';

class ImagenesScreen extends StatefulWidget {
  const ImagenesScreen({super.key});

  @override
  State<ImagenesScreen> createState() => _ImagenesScreenState();
}

class _ImagenesScreenState extends State<ImagenesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('imagenes'),
        ),
        body: Center(
          child: Container(
            height: 600,
            
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Personajes(
                    imagen: 'mario.png',
                    nombre: 'Mario Bros',
                    precio: '55.000'),
                Personajes(
                    imagen: 'luigi.png', nombre: 'Luigi Bros', precio: '45.000'),
              ],
            ),
          ),
        ));
  }
}
