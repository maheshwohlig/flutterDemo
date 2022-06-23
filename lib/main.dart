// ignore: unused_import
import 'package:demo/home.dart';
import 'package:demo/login.dart';
import 'package:demo/BottomNav.dart';
import 'package:demo/account.dart';
import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

void main() {
  runApp(
    MaterialApp(
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
  /// Views to display
  List<Widget> views = [
    Center(
      child: LoginScreen(),
    ),
    Center(
      child: BottomNav(),
    ),
    Center(
      child: Account(),
    ),
  ];

  /// The currently selected index of the bar
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// You can use an AppBar if you want to
      //appBar: AppBar(
      //  title: const Text('App'),
      //),

      // The row is needed to display the current view
      body: Row(
        children: [
          /// Pretty similar to the BottomNavigationBar!
          SideNavigationBar(
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'LoginScreen',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'BottomNav',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Setting',
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
