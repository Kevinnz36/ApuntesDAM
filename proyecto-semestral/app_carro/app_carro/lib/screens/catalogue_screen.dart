// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_declarations, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:app_carro/widgets/bottom_nav_bar.dart';
import 'package:app_carro/widgets/drawer_menu.dart';
import 'package:app_carro/widgets/top_bar.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color barColor = Color(0xFF006D97);
    final Color iconColor = Color(0xFF012534);
    final Color backgroundColor = Color(0xFFE6E6E6);
    final Color borderColor = Colors.white;
    final double imageWidth = MediaQuery.of(context).size.width; // Ancho de la pantalla
    final double imageHeight = 100.0; // Altura deseada para las imágenes
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
          padding:
              EdgeInsets.all(margin), // Margen en los bordes de la pantalla
          child: Column(
            children: [
              // Barra de búsqueda
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20), // Bordes redondeados
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search,
                          color: backgroundColor), // Cambio de color del ícono
                      onPressed: () {
                        // Acción de búsqueda
                      },
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Buscar productos...',
                          hintStyle: TextStyle(
                              color:
                                  backgroundColor), // Cambio de color del texto
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Espacio entre la barra de búsqueda y los botones de categoría
              SizedBox(height: 16),

              // Botones de categoría
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryButton(
                      'Categoría 1', Color(0xFF012534), backgroundColor),
                  CategoryButton('Categoría 2', Colors.white, iconColor),
                  CategoryButton('Categoría 3', Colors.white, iconColor),
                  CategoryButton('Categoría 4', Colors.white,
                      iconColor), // Botón adicional
                ],
              ),

              // Espacio entre los botones de categoría y el texto "Todos los productos"
              SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment
                    .start, // Alineación de los elementos a la izquierda
                children: [
                  Text('Todos los productos',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),

              // Espacio entre el texto "Todos los productos" y las imágenes de productos
              SizedBox(height: 16),

              // Imágenes de productos
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Dos imágenes por fila
                    crossAxisSpacing: 8.0, // Espacio horizontal entre imágenes
                    mainAxisSpacing: 8.0, // Espacio vertical between imágenes
                  ),
                  itemCount: 12, // Cantidad de productos
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Fondo blanco del contenedor
                        borderRadius:
                            BorderRadius.circular(10), // Bordes redondeados
                        border: Border.all(
                          color: borderColor, // Borde blanco
                          width: 2, // Ancho del borde
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                10), // Bordes redondeados para la imagen
                            child: Image.asset(
                              'assets/images/img-2.png',
                              width: imageWidth, // Ancho de la pantalla
                              height: imageHeight, // Altura deseada para las imágenes
                              fit: BoxFit.cover, // Ajusta la imagen al contenedor sin distorsionarla
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'Nombre del Producto',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Text('Descripción del Producto'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$999'),
                              Icon(MdiIcons.plusCircle),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;

  CategoryButton(this.text, this.buttonColor, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor, // Color de fondo del botón
        borderRadius: BorderRadius.circular(10), // Bordes redondeados
      ),
      padding: EdgeInsets.all(8),
      child: Text(
        text,
        style: TextStyle(
          color: textColor, // Cambio de color del texto
        ),
      ),
    );
  }
}