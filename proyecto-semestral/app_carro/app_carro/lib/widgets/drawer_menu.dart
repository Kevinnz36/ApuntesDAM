// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150, // Altura del segmento superior
            color: Color(0xFF006D97), // Color de fondo azul del segmento superior
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 40, // Tamaño del círculo de usuario
                    backgroundColor: Colors.white, // Color de fondo del círculo
                    child: Icon(
                      MdiIcons.account, // Icono de usuario
                      size: 40,
                      color: Color(0xFF006D97), // Color del icono de usuario (azul)
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Nombre de Usuario',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Color del texto (blanco)
                      ),
                    ),
                    Text(
                      'ejemplo@correo.com',
                      style: TextStyle(
                        color: Colors.white, // Color del texto (blanco)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider( // Divider entre "Mis Pedidos" y "Cerrar Sesión"
            color: Color(0xFFE6E6E6)), // Color del borde (negro)
          ListTile(
            leading: Icon(MdiIcons.account),
            iconColor: Color(0xFF012534),
            title: Text('Mi Perfil', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
              // Acción al seleccionar 
            },
          ),
          Divider( // Divider para "Mi Perfil"
            color: Colors.black, // Color del borde (negro)
          ),
          ListTile(
            leading: Icon(MdiIcons.notebook),
            iconColor: Color(0xFF012534),
            title: Text('Mis Pedidos', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
              // Acción al seleccionar "Mis Pedidos"
            },
          ),
          Divider( // Divider entre "Mis Pedidos" y "Cerrar Sesión"
            color: Colors.black, // Color del borde (negro)
          ),
          ListTile(
            leading: Icon(MdiIcons.exitToApp),
            iconColor: Color(0xFF012534),
            title: Text('Cerrar Sesión', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
              // Acción al seleccionar "Cerrar Sesión"
            },
          ),
          Divider( // Divider entre "Mis Pedidos" y "Cerrar Sesión"
            color: Colors.black, // Color del borde (negro)
          ),
        ],
      ),
    );
  }
}