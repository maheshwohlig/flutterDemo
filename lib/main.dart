// ignore: unused_import
import 'package:demo/CreateProvider.dart';
import 'package:demo/ResultLog.dart';
import 'package:demo/dashboard.dart';

import 'package:demo/login.dart';
import 'package:demo/BottomNav.dart';

import 'package:demo/ExpandedTile.dart';
import 'package:demo/Provider.dart';
import 'package:demo/setting.dart';
import 'package:demo/Provider_table.dart';
import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

import 'Game_Config.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const MainView(),
    ),
  );
}

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  bool _isExpanded = false;

  /// Views to display
  List<Widget> views = [
    Center(
      child: Dashboard(),
    ),
    const Center(
      child: Game_config(),
    ),
    const Center(
      child: Provider(),
    ),
    Center(
      child: ResultLog(),
    ),
    Center(
      child: LoginScreen(),
    ),
    const Center(
      child: BottomNav(),
    ),
    Center(
      child: ExpansionTileSample(),
    ),
    Center(
      child: Setting(),
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome To Login'),
        backgroundColor: const Color.fromARGB(255, 6, 10, 239),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Row(
        children: [
          SideNavigationBar(
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.phone,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.phone,
                label: 'Config',
              ),
              SideNavigationBarItem(
                icon: Icons.phone,
                label: 'Provider',
              ),
              SideNavigationBarItem(
                icon: Icons.phone,
                label: 'Result Log',
              ),
              SideNavigationBarItem(
                icon: Icons.login,
                label: 'LoginPage',
              ),
              SideNavigationBarItem(
                icon: Icons.logout,
                label: 'ExpansionTileSample',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'setting',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}
