import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  final _pageController = PageController();
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Container(
            decoration: BoxDecoration(color: Color.fromARGB(255, 8, 8, 8)),
            alignment: Alignment.center,
            child: Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 243, 5, 5),
                  width: 2,
                ),
              ),
              child: TextButton(
                onPressed: () => showDialog<String>(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('AlertDialog Title'),
                    content: const Text('AlertDialog description'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
                child: const Text('Show Dialog'),
              ),
            ),
          ),
          Container(
              child: Scaffold(
            appBar: AppBar(
              title: Text('Expansion Tile'),
            ),
            drawer: Drawer(
              child: Column(
                children: <Widget>[
                  ExpansionTile(
                    onExpansionChanged: (b) {
                      setState(() {
                        _isExpanded =
                            !_isExpanded; //using set state just to exemplify
                      });
                    },
                    title: Text('Expand items'),
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Icon(_isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down),
                    ),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 60),
                        child: ExpansionTile(
                          title: Text('First child'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 60),
                        child: ExpansionTile(
                          title: Text('Second child'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
          Container(color: Colors.greenAccent.shade700),
          Container(color: Colors.orange),
        ],
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        // textStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.blue,
            activeTitleColor: Colors.blue.shade600,
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
            activeColor: Colors.red,
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            backgroundColorOpacity: 0.1,
            activeColor: Colors.greenAccent.shade700,
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.orange,
            activeIconColor: Colors.orange.shade600,
            activeTitleColor: Colors.orange.shade700,
          ),
        ],
      ),
    );
  }
}
