// ignore: file_names
// ignore_for_file: unnecessary_const, deprecated_member_use

import 'package:demo/CreateProvider.dart';
import 'package:demo/dashboard.dart';
import 'package:demo/deshbord_widget.dart';
import 'package:demo/table.dart';

import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class Provider extends StatefulWidget {
  const Provider({Key? key}) : super(key: key);

  @override
  ProviderState createState() => ProviderState();
}

// ignore: camel_case_types
class ProviderState extends State<Provider> {
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding:
            const EdgeInsets.only(top: 40, left: 50, right: 50, bottom: 40.0),
        color: Colors.grey.shade200,
        child: Column(
          children: <Widget>[
            Row(children: const [
              Padding(
                  padding: EdgeInsets.only(
                    bottom: 15.0,
                  ),
                  child: Text(
                    "Provider",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'RaleWay',
                    ),
                  )),
            ]),
            Container(
              color: Colors.white,
              child: Row(children: <Widget>[
                Container(
                    decoration: const BoxDecoration(),
                    height: 90,
                    width: 500,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 42.0, top: 30, right: 42.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin:
                                  const EdgeInsets.only(left: 10, bottom: 30),
                              child: const Text(
                                "List of Provider (Total : 2)",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.topRight,
                    height: 100,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            top: 22,
                          ),
                          width: 250,
                          height: 40,
                          child: const TextField(
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'RaleWay',
                            ),
                            decoration: InputDecoration(
                              hintText: 'search',
                              hintStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 131, 128, 128),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 54, 158, 244)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 30, right: 42.0),
                  height: 90,
                  alignment: Alignment.topCenter,
                  child: ButtonTheme(
                    minWidth: 100.0,
                    height: 45.0,
                    child: RaisedButton(
                        color: const Color.fromARGB(255, 5, 244, 81),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateProvider()));
                        },
                        child: const Text('create')),
                  ),
                ),
              ]),
            ),
            Container(
              padding: const EdgeInsets.all(40),
              color: Colors.white,
              margin: const EdgeInsets.only(top: 20.0),
              height: 500,
              child: const Center(
                child: Provider_table(),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
