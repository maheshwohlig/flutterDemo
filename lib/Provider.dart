// ignore_for_file: deprecated_member_use

import 'package:demo/CreateProvider.dart';
import 'package:demo/main.dart';
import 'package:demo/Provider_table.dart';

import 'package:flutter/material.dart';

class Provider extends StatefulWidget {
  const Provider({Key? key}) : super(key: key);

  @override
  ProviderState createState() => ProviderState();
}

class ProviderState extends State<Provider> {
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: MainView(),
        body: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 40, left: 50, right: 40),
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
                            child: Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                    top: 40,
                                                    left: 30,
                                                  ),
                                                  child: const Text(
                                                    "List of Provider (Total : 2)",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 30, bottom: 30),
                                              width: 250,
                                              height: 40,
                                              child: const TextField(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'RaleWay',
                                                ),
                                                decoration: InputDecoration(
                                                  hintText: 'search',
                                                  hintStyle: TextStyle(
                                                      color: Colors.black),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color.fromARGB(
                                                          255, 131, 128, 128),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 54, 158, 244)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 10,
                                                  top: 30,
                                                  bottom: 30,
                                                  right: 30),
                                              alignment: Alignment.topCenter,
                                              child: ButtonTheme(
                                                minWidth: 100.0,
                                                height: 45.0,
                                                child: RaisedButton(
                                                    color: const Color.fromARGB(
                                                        255, 5, 244, 81),
                                                    onPressed: () {
                                                      Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  CreateProvider(
                                                                    value:
                                                                        'createProvider',
                                                                  )));
                                                    },
                                                    child:
                                                        const Text('create')),
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  height: 400,
                                  child: const Center(
                                    child: Provider_table(),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ))));
  }
}
