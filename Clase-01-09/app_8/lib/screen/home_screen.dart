import 'package:flutter/material.dart';
import 'package:app_8/screen/tab_home_screen.dart';
import 'package:app_8/screen/tab_rocket_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TABS'),
            backgroundColor: Color(0xffc10037),
            bottom: TabBar(
              labelColor: Colors.grey,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
              
              tabs: [
                
                Tab(
                  text: 'Home'  ,
                  icon: Icon(MdiIcons.earth),
                  
                ),
                Tab(
                  text: 'Rocket'  ,
                  icon: Icon(MdiIcons.rocket),
                  
                ),
                Tab(
                  text: 'Star'  ,
                  icon: Icon(MdiIcons.star),
                  
                ),
                Tab(
                  text: 'surf'  ,
                  icon: Icon(MdiIcons.surfing),
                  
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TabHomeScreen(),
              TabRocketScreen()
            ],
          ),
        ),
      )
    );
  }
}