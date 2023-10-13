// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:app_carro/widgets/bottom_nav_bar.dart';
import 'package:app_carro/widgets/drawer_menu.dart';
import 'package:app_carro/widgets/top_bar.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color barColor = Color(0xFF006D97);
    final Color iconColor = Color(0xFF012534);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: TopBar(barColor: barColor, iconColor: iconColor),
      ),
      drawer: DrawerMenu(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 5, // Número de productos en el carrito
          itemBuilder: (context, index) {
            final productIndex = index + 1; // Ajuste del índice
            return CartProductItem(
              productImage: 'assets/images/img-$productIndex.png',
              productName: 'Nombre del Producto $productIndex',
              productDescription: 'Descripción del Producto $productIndex',
              productPrice: '\$${19.99 * productIndex}',
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class CartProductItem extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productDescription;
  final String productPrice;

  CartProductItem({
    required this.productImage,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                productImage,
                fit: BoxFit.cover, // Ajusta la imagen al contenedor sin distorsionarla
              ),
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(productDescription),
                Text(
                  productPrice,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF006D97),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(MdiIcons.minusCircle),
                onPressed: () {
                  // Reducir la cantidad del producto
                },
              ),
              Text('1'), // Aquí muestra la cantidad actual
              IconButton(
                icon: Icon(MdiIcons.plusCircle),
                onPressed: () {
                  // Aumentar la cantidad del producto
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
