import 'package:flutter/material.dart';


class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  int _currentIndex = 0 ;
  final _paginas = [
    {'pagina':TabHomeScreen(, 'texto':'Home','color':0xffd80100,'icono':MdiIcons.home)}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_paginas[_currentIndex]['texto']),
        backgroundColor: Color(_paginas[_currentIndex]['color']),
      ),
      body: _paginas[_currentIndex]['pagina'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: _paginas.map((p)
        {
          return BottomNavigationBarItem(
            icon: Icon(p['icono']),
            label: p['texto'],
            backgroundColor: Color(p['color'])
          );
        }
        ).toList(),


        // items: [
        //   BottomNavigationBarItem(
        //     icon: Icon(_paginas[0]['icono']),
        //     label: _paginas[0]['texto'],
        //     backgroundColor: Color(_paginas[0]['color'])),
            
        //   BottomNavigationBarItem(
        //     icon: Icon(_paginas[1]['icono']),
        //     label: _paginas[1]['texto'],
        //     backgroundColor: Color(_paginas[1]['color'])),
        //   BottomNavigationBarItem(
        //     icon: Icon(MdiIcons.star),
        //     label: 'Star',
        //     backgroundColor: Color(0xffD80100)),
        //   BottomNavigationBarItem(
        //     icon: Icon(MdiIcons.surfing),
        //     label: 'Surf',
        //     backgroundColor: Color(0xffD80100)),
        // ],
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex =  index;
          });
        },
      ),
    );
  }
}