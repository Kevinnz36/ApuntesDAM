// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_aplication/screens/tabs_calculadora.dart';
import 'package:flutter_aplication/screens/tabs_monedas.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Monedas'),
          leading: Icon(MdiIcons.cashMultiple),
          bottom: TabBar(tabs: [
            Tab(
              text: 'Monedas',
            ),
            Tab(
              text: 'Calculadora',
            )
          ]),
        ),
        body: TabBarView(children: [TabsMonedas(), TabsCalculadora()]),
      ),
    );
  }
}
