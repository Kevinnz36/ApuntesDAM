// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:app_carro/widgets/bottom_nav_bar.dart';
import 'package:app_carro/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:app_carro/widgets/drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color barColor = Color(0xFF006D97);
    final Color iconColor = Color(0xFF012534);
    final Color backgroundColor = Color(0xFFE6E6E6);
    final Color borderColor = Colors.white;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: TopBar(barColor: barColor, iconColor: iconColor),
      ),
      drawer: DrawerMenu(), // Coloca el cajón del menú antes del cuerpo
      body: Container(
        color: backgroundColor, // Fondo de la pantalla
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white, // Fondo blanco de la imagen
                    borderRadius: BorderRadius.circular(10), // Bordes redondeados
                    border: Border.all(
                      color: borderColor, // Borde blanco
                      width: 2, // Ancho del borde
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Bordes redondeados para la imagen
                    child: Image.asset(
                      'assets/images/img-home.png',
                      width: double.infinity, // Ancho igual al contenedor
                      height: double.infinity, // Altura igual al contenedor
                      fit: BoxFit.cover, // Ajusta la imagen al contenedor sin distorsionarla
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white, // Fondo blanco para "Texto 1"
                    borderRadius: BorderRadius.circular(10), // Bordes redondeados
                    border: Border.all(
                      color: borderColor, // Borde blanco
                      width: 2, // Ancho del borde
                    ),
                  ),
                  child: Center(child: Text('LEYENDA DE LA EMP')),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white, // Fondo blanco para "Texto 2"
                    borderRadius: BorderRadius.circular(10), // Bordes redondeados
                    border: Border.all(
                      color: borderColor, // Borde blanco
                      width: 2, // Ancho del borde
                    ),
                  ),
                  child: Center(child: Text('CONTÁCTANOS')),
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
