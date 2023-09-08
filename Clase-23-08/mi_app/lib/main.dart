// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mi_app/screens/archivos_screen.dart';                           
import 'package:mi_app/screens/boton_screen.dart';
import 'package:mi_app/screens/configuracion_screen.dart'; 
import 'package:mi_app/screens/home_screen.dart';
import 'package:mi_app/screens/listas_screen.dart';
import 'package:mi_app/screens/images_screen.dart';
import 'package:mi_app/screens/pagos_screen.dart';
import 'package:mi_app/screens/usuarios_screen.dart';  
                                                                  
void main() {                                                     
  runApp(const MyApp());                                          
}                                                                 
                                                                  
class MyApp extends StatelessWidget {                             
  const MyApp({super.key});                                       
                                                                  
  // This widget is the root of your application.                 
  @override                                                       
  Widget build(BuildContext context) {                            
    return MaterialApp(                                           
      debugShowCheckedModeBanner: false, //1                      
      title: 'Flutter Demo',                                      
      routes: {
        '/': (context) => ListasScreen(),
       '/archivos':(context) => ArchivoScreen(), 
       '/configuracion':(context) => ConfiguracionScreen(),
       '/pagos':(context) => PagosScreen(),
       '/usuarios':(context) => UsuariosScreen()
      },
      initialRoute: '/',                                                                                                  
    );                                                            
  }                                                               
}                                                                   