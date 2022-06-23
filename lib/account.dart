import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      Center(
        child: Container(
          height:
              850, // use 'MediaQuery.of(context).size.height' to fit the screen height,
          color: Color.fromARGB(255, 22, 220, 213),
        ),
      )
    ];

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: <Widget>[
              _children[0],
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: bottomNavigationBar(),
              ),
            ],
          ),
        ));
  }
}

Widget bottomNavigationBar() {
  return Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 7, 255, 210),
    ),
    child: BottomNavigationBar(
      backgroundColor: Color.fromARGB(0, 11, 178, 208),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.local_activity), label: ('Activity')),
        BottomNavigationBarItem(icon: Icon(Icons.inbox), label: ('Inbox')),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ('Profile')),
      ],
    ),
  );
}
