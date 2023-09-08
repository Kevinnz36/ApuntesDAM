// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer app'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(child: Text('Home Drawer')),
      drawer: Drawer(
        child: ListView(
          children: [
            
            DrawerHeader(
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/usericon.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Espacio entre la imagen y el texto
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nombre de usuario',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'correo@mail.com',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('home'),
              leading: Icon(MdiIcons.home),
              iconColor: Colors.redAccent,
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Rocket'),
              leading: Icon(MdiIcons.rocket),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Config'),
              leading: Icon(MdiIcons.cog),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
