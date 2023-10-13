// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:app_carro/screens/cart_screen.dart';
import 'package:app_carro/screens/catalogue_screen.dart';
import 'package:app_carro/screens/gallery_screen.dart';
import 'package:app_carro/screens/home_screen.dart';
import 'package:flutter/material.dart';

/*
MATÍAS CASTILLO
DIEGO MUÑOZ
KEVINS VILLATORO
 */

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(), 
        '/gallery': (context) => GalleryScreen(),
        '/catalogue': (context) => CatalogueScreen(),
        '/cart': (context) => CartScreen(),
      },
    );
  }
}


