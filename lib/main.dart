// ignore: unused_import
import 'package:demo/home.dart';
import 'package:demo/login.dart';
import 'package:demo/BottomNav.dart';
import 'package:demo/account.dart';
import 'package:demo/ExpandedTile.dart';
import 'package:demo/setting.dart';
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
      child: Game_config(),
    ),
    Center(
      child: Account(),
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
    )
  ];

  /// The currently selected index of the bar
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome To Login'),
        backgroundColor: Color.fromARGB(255, 6, 10, 239),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
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
                label: 'Accont',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'LoginScreen',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'BottomNav',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
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

          /// Make it take the rest of the available width
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}
