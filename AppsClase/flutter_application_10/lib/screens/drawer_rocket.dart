import 'package:flutter/material.dart';

class drawerRocket extends StatefulWidget {
  const drawerRocket({super.key});

  @override
  State<drawerRocket> createState() => _drawerRocketState();
}

class _drawerRocketState extends State<drawerRocket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ROCKET'),
      ),
      body: Text('ROCKET'),
    );
  }
}