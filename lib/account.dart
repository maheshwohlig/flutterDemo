import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Account')),
      body: Material(
          child: Center(
        child: Container(
          child: Text('hello This is Account Page'),
        ),
      )),
    );
  }
}
