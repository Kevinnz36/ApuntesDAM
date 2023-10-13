// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:app_carro/screens/cart_screen.dart';
import 'package:app_carro/screens/catalogue_screen.dart';
import 'package:app_carro/screens/gallery_screen.dart';
import 'package:app_carro/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter/cupertino.dart';  


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final Color backgroundBarColor = Color(0xFF006D97);
  final Color iconColor = Color(0xFF012534);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Actualiza la variable _selectedIndex y navega a la ruta correspondiente
    if (index == 0) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => HomeScreen()));
    } else if (index == 1) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => GalleryScreen()));
    } else if (index == 2) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => CartScreen()));
    } else if (index == 3) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => CatalogueScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
        color: backgroundBarColor,
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 100,
        iconSize: 28.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          _buildBottomNavigationBarItem(MdiIcons.homeVariant, 'Home', 0),
          _buildBottomNavigationBarItem(MdiIcons.image, '', 1),
          _buildBottomNavigationBarItem(MdiIcons.currencyUsd, 'Pay', 2),
          _buildBottomNavigationBarItem(MdiIcons.store, '', 3),
          _buildBottomNavigationBarItem(MdiIcons.exitToApp, '', 4),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: iconColor,
      ),
      label: label,
    );
  }
}