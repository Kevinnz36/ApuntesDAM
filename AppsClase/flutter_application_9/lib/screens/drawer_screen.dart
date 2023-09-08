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
        title: Text('Drawer'),
        backgroundColor: Color(0xff45EEE6),
      ),
      body: Center(

        child: Text('Home Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                height: 100,
                width: 100,

                child: Image(
                  image: AssetImage('assets/images/groot.jpg'),
                  ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(
                
              MdiIcons.home,
              color: Color(0xff17807B),
              ),
              onTap: (){},

            ),
            Divider(),
            ListTile(
              title: Text('Rocket'),
              leading: Icon(
                
              MdiIcons.rocket,
              color: Color(0xff17807B),
              ),
              onTap: (){},

            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}