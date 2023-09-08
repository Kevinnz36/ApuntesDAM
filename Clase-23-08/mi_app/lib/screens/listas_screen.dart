// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class ListasScreen extends StatelessWidget {
  const ListasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listas'),
        ),
        body: ListView(
          children: [
            ListTile(
              tileColor: Color.fromARGB(255, 236, 205, 207),
              leading: Icon(
                Icons.cloud_download,
                color: Color(0xffC10037),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('Archivos'),
              subtitle: Text('Carpetas y archivos'),
              onTap: () {
                Navigator.pushNamed(context, '/archivos');
              },
            ),
            Divider(
              thickness: 0.5,
              color: Colors.lightBlue,
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 200, 242, 245),
              leading: Icon(
                Icons.settings,
                color: Color(0xffC10037),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('Configuración'),
              subtitle: Text('Configuración de la App'),
              onTap: () {
                Navigator.pushNamed(context, '/configuracion');
              },
            ),
            Divider(
              thickness: 0.5,
              color: Colors.lightBlue,
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 237, 247, 213),
              leading: Icon(
                Icons.credit_card,
                color: Color(0xffC10037),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('Pagos'),
              subtitle: Text('Pagos de los servicios'),
              onTap: () {
                Navigator.pushNamed(context, '/pagos');
              },
            ),
            Divider(
              thickness: 0.5,
              color: Colors.lightBlue,
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 240, 207, 234),
              leading: Icon(
                Icons.people,
                color: Color(0xffC10037),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('Usuarios'),
              subtitle: Text('Usuarios de la App'),
              onTap: () {
                Navigator.pushNamed(context, '/usuarios');
              },
            ),
            Divider(
              thickness: 0.5,
              color: Colors.lightBlue,
            ),
          ],
        ));
  }
}
