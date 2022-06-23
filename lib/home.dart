import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

class m extends StatelessWidget {
  int days = 30;
  String name = "Home Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Material(
          child: Center(
        child: Container(
          child: Text('hello world This is $name'),
        ),
      )),
    );
  }
}
