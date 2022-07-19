// ignore: unused_import
import 'package:demo/CreateProvider.dart';
import 'package:demo/dashboard.dart';

import 'package:demo/login.dart';
import 'package:demo/BottomNav.dart';

import 'package:demo/ExpandedTile.dart';
import 'package:demo/Provider.dart';
import 'package:demo/setting.dart';
import 'package:demo/table.dart';
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
  // ignore: library_private_types_in_public_api
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  bool _isExpanded = false;

  /// Views to display
  List<Widget> views = [
    const Center(
      child: Provider(),
    ),
    const Center(
      child: Game_config(),
    ),
    const Center(
      child: Dashboard(),
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
    const Center(
      child: Provider_table(),
    )
  ];

  /// The currently selected index of the bar
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

      /// You can use an AppBar if you want to
      //appBar: AppBar(
      //  title: const Text('App'),
      //),

      // The row is needed to display the current view
      body: Row(
        children: [
          SideNavigationBar(
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Config',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Provider',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'LoginPage',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'ExpansionTileSample',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'setting',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'table',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),

          /// Make it take the rest of the available width
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}
