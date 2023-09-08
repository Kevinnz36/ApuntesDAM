import 'package:flutter/material.dart';
import 'package:flutter_application_9/screens/drawer_rocket.dart';
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
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        
                        image: AssetImage('assets/images/groot.jpg')
                      ),
                      border: Border.all(width: 2.0,color: Color(0xff17807B)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Groot',style: TextStyle(fontSize: 18),),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(
                
              MdiIcons.home,
              color: Color(0xff17807B),
              ),
              onTap: ()=> _navegar(context, 1),

            ),
            Divider(),
            ListTile(
              title: Text('Rocket'),
              leading: Icon(
                
              MdiIcons.rocket,
              color: Color(0xff17807B),
              ),
              onTap: ()=> _navegar(context, 2),

            ),
            Divider(),
            ListTile(
              title: Text('Cerrar'),
              leading: Icon(
                
              MdiIcons.close,
              color: Color(0xff17807B),
              ),
              onTap: () => Navigator.pop(context), 
              
            ),
            Divider(),
          ],
        ),
      ),
    );


  }
  void _navegar(BuildContext context , int pagina){
    List<Widget> paginas= [
      DrawerScreen(),drawerRocket()//agregar más páginas
    ];



  //   final route = MaterialPageRoute(builder: (context){
  //     return paginas [  pagina -1];
  // });

  final pageRouteBuilder = PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 300),
    pageBuilder: (context,animation, animationTime){
      return paginas[pagina - 1];
    },
    transitionsBuilder: (context,animation,animationTime,child){
      return SlideTransition(
        
        position: Tween(
          begin: Offset(1.0,0.0),
          end: Offset(0.0, 0.0)
        ).animate(animation),
        child: child,
        );
    }


  );

  
  Navigator.push(context, pageRouteBuilder);

  }
}