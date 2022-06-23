import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting')),
      body: Material(
          child: Center(
        child: Container(
          child: Text('hello This is Setting Page'),
        ),
      )),
    );
  }
}
