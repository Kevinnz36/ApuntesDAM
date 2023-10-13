// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final Color barColor;
  final Color iconColor;

  TopBar({required this.barColor, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: barColor,
      centerTitle: true,
      title: Text('LOGO'),
      leading: Builder(
        builder: (context) => IconButton(
          icon: Icon(Icons.menu, color: iconColor), // Ícono de menú
          onPressed: () {
            Scaffold.of(context).openDrawer(); // Abre el Drawer al hacer clic en el ícono del menú
          },
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart, color: iconColor), // Ícono del carro de compras
          onPressed: () {
            // Agrega aquí la acción al hacer clic en el ícono del carro de compras
          },
        ),
      ],
    );
  }
}