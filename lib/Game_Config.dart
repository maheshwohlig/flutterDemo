// ignore: file_names
// ignore_for_file: unnecessary_const, deprecated_member_use

import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class Game_config extends StatefulWidget {
  final int minValue;
  final int maxValue;
  const Game_config({
    Key? key,
    this.minValue = 0,
    this.maxValue = 10,
  }) : super(key: key);

  @override
  Game_configState createState() => Game_configState();
}

// ignore: camel_case_types
class Game_configState extends State<Game_config> {
  // ignore: non_constant_identifier_names
  int Major_counter = 0;
  // ignore: non_constant_identifier_names
  int Minor_counter = 0;
  // ignore: non_constant_identifier_names
  int Build_counter = 0;

  void _decrementCounter() {
    setState(() {
      if (Major_counter > widget.minValue) {
        Major_counter--;
      }
    });
  }

  void _incrementCounter() {
    setState(() {
      if (Major_counter < widget.maxValue) {
        Major_counter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding:
          const EdgeInsets.only(top: 40, left: 50, right: 50, bottom: 40.0),
      color: Colors.grey.shade200,
      child: Column(
        children: <Widget>[
          Row(children: const [
            Text(
              "Game Config",
              style: TextStyle(
                color: Color.fromARGB(255, 57, 55, 55),
                fontSize: 22,
                fontFamily: 'RaleWay',
              ),
            ),
          ]),
          Row(children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 15.0, top: 15),
              child: Text(
                "Android Section",
                style: TextStyle(
                  color: Color.fromARGB(255, 57, 55, 55),
                  fontSize: 15,
                  fontFamily: 'RaleWay',
                ),
              ),
            )
          ]),
          Row(children: <Widget>[
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  height: 450,
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 42.0, top: 30, right: 42.0),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.grey),
                      )),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, bottom: 10),
                          child: const Text(
                            "Android version*",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.grey),
                      )),
                      margin:
                          const EdgeInsets.only(top: 10, right: 42, left: 42),
                      child: Column(
                        children: [
                          Row(children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 10, left: 20),
                              child: const Text(
                                "Version level",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(bottom: 10, left: 260),
                              child: const Text(
                                "Version code",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 206, 205, 205)),
                      )),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 42, right: 42),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  "Major level",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 10, left: 275, bottom: 10),
                                child: ButtonTheme(
                                  minWidth: 14.0,
                                  height: 45.0,
                                  child: RaisedButton(
                                    color: const Color.fromARGB(255, 244, 5, 5),
                                    // ignore: sort_child_properties_last
                                    child: const Icon(
                                      Icons.remove,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                    onPressed: _decrementCounter,
                                  ),
                                ),
                              ),
                              Text(
                                '$Major_counter',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 14, 14, 14),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: ButtonTheme(
                                  minWidth: 14.0,
                                  height: 45.0,
                                  child: RaisedButton(
                                    color: const Color.fromARGB(255, 244, 5, 5),
                                    onPressed: _incrementCounter,
                                    child: const Icon(
                                      Icons.add,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 206, 205, 205)),
                      )),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 42, right: 42),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  "Minor level",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 10, left: 275, bottom: 10),
                                child: ButtonTheme(
                                  minWidth: 14.0,
                                  height: 45.0,
                                  child: RaisedButton(
                                    color: const Color.fromARGB(255, 244, 5, 5),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.remove,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '$Minor_counter',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 14, 14, 14),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: ButtonTheme(
                                  minWidth: 14.0,
                                  height: 45.0,
                                  child: RaisedButton(
                                    color: const Color.fromARGB(255, 244, 5, 5),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.add,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 42),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  "Build level",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 10, left: 280, bottom: 10),
                                child: ButtonTheme(
                                  minWidth: 14.0,
                                  height: 45.0,
                                  child: RaisedButton(
                                    color: const Color.fromARGB(255, 244, 5, 5),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.remove,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '$Build_counter',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 14, 14, 14),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: ButtonTheme(
                                  minWidth: 14.0,
                                  height: 45.0,
                                  child: RaisedButton(
                                    color: const Color.fromARGB(255, 244, 5, 5),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.add,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 42.0,
                        top: 20,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, bottom: 10),
                          child: const Text(
                            "Android Google Playstore url*",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'RaleWay',
                        ),
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 54, 158, 244)),
                          ),
                        ),
                      ),
                    ),
                  ])),
            ),
          ]),
        ],
      ),
    ));
  }
}
