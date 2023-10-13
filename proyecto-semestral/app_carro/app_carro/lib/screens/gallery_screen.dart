// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:app_carro/widgets/bottom_nav_bar.dart';
import 'package:app_carro/widgets/drawer_menu.dart';
import 'package:app_carro/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color barColor = Color(0xFF006D97);
    final Color iconColor = Color(0xFF012534);
    final Color backgroundColor = Color(0xFFE6E6E6);
    final Color borderColor = Colors.white;
    final double imageWidth = 150.0; // Ancho deseado para las imágenes
    final double imageHeight = 150.0; // Altura deseada para las imágenes
    final double margin = 16.0; // Margen en los bordes de la pantalla

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: TopBar(barColor: barColor, iconColor: iconColor),
      ),
      drawer: DrawerMenu(), // Coloca el cajón del menú antes del cuerpo
      body: Container(
        color: backgroundColor, // Fondo gris de la pantalla
        child: Padding(
          padding: EdgeInsets.all(margin), // Margen en los bordes de la pantalla
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Dos imágenes por fila
              crossAxisSpacing: 8.0, // Espacio horizontal entre imágenes
              mainAxisSpacing: 8.0, // Espacio vertical entre imágenes
            ),
            itemCount: 12, // Cantidad de imágenes
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Fondo blanco del contenedor
                  borderRadius: BorderRadius.circular(10), // Bordes redondeados
                  border: Border.all(
                    color: borderColor, // Borde blanco
                    width: 2, // Ancho del borde
                  ),
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Bordes redondeados para la imagen
                    child: Image.asset(
                      'assets/images/img-1.png',
                      width: imageWidth, // Ancho deseado para la imagen
                      height: imageHeight, // Altura deseada para las imágenes
                      fit: BoxFit.cover, // Ajusta la imagen al contenedor sin distorsionarla
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}