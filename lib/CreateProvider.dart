// ignore: file_names
// ignore_for_file: unnecessary_const, deprecated_member_use

import 'dart:io';

import 'package:demo/Provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class CreateProvider extends StatefulWidget {
  const CreateProvider({Key? key}) : super(key: key);

  @override
  CreateProviderState createState() => CreateProviderState();
}

class CreateProviderState extends State<CreateProvider> {
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
              Padding(
                  padding: EdgeInsets.only(
                    bottom: 15.0,
                  ),
                  child: Text(
                    "Create Provider",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'RaleWay',
                    ),
                  )),
            ]),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              height: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
                          "Name",
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
                          "Game Code",
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
                          "Order",
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
                          "Game Icon",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    child: RaisedButton(
                      child: Text('UPLOAD FILE'),
                      onPressed: () async {
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles();
                        print("called file picker");
                      },
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(
                              top: 30,
                            ),
                            height: 90,
                            width: 100,
                            alignment: Alignment.topCenter,
                            child: Column(children: [
                              ButtonTheme(
                                minWidth: 100.0,
                                height: 45.0,
                                child: RaisedButton(
                                    color:
                                        const Color.fromARGB(255, 5, 244, 81),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Provider()));
                                    },
                                    child: const Text('Save')),
                              ),
                            ])),
                        Container(
                            margin: const EdgeInsets.only(
                              top: 30,
                            ),
                            height: 90,
                            width: 100,
                            alignment: Alignment.topCenter,
                            child: Column(children: [
                              ButtonTheme(
                                minWidth: 100.0,
                                height: 45.0,
                                child: RaisedButton(
                                    color: Colors.red,
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Provider()));
                                    },
                                    child: const Text('Cancle')),
                              ),
                            ])),
                      ])
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
