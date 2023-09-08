import 'package:flutter/material.dart';

class TabRocketScreen extends StatefulWidget {
  const TabRocketScreen({super.key});

  @override
  State<TabRocketScreen> createState() => _TabRocketScreenState();
}

class _TabRocketScreenState extends State<TabRocketScreen> {
  @override
  Widget build(BuildContext context) {
    return   const Center(
      child: Text('Rocket',style: TextStyle(fontSize: 30)),

    );
  }
}