// ignore_for_file: deprecated_member_use

import 'package:demo/Provider.dart';
import 'package:demo/main.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CreateProvider extends StatefulWidget {
  const CreateProvider({Key? key}) : super(key: key);

  @override
  CreateProviderState createState() => CreateProviderState();
}

class CreateProviderState extends State<CreateProvider> {
  final _formKey = GlobalKey<FormState>();

  late FocusNode nameField;
  late FocusNode gameField;
  late FocusNode orderField;

  final nameFieldKey = GlobalKey<FormFieldState>();
  final gameCodeFieldkey = GlobalKey<FormFieldState>();
  final orderFieldkey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    nameField = FocusNode();
    gameField = FocusNode();
    orderField = FocusNode();

    nameField.addListener(() {
      if (!nameField.hasFocus) {
        nameFieldKey.currentState!.validate();
      }
    });
    gameField.addListener(() {
      if (!gameField.hasFocus) {
        gameCodeFieldkey.currentState!.validate();
      }
    });
    orderField.addListener(() {
      if (!orderField.hasFocus) {
        orderFieldkey.currentState!.validate();
      }
    });
  }

  @override
  void dispose() {
    nameField.dispose();
    gameField.dispose();
    orderField.dispose();
    super.dispose();
  }

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: const MainView(),
        body: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 50,
                    right: 50,
                  ),
                  color: Colors.grey.shade200,
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
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
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: const Text(
                                    "Name",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                              TextFormField(
                                key: nameFieldKey,
                                focusNode: nameField,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a value.';
                                  }
                                  return null;
                                },
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'RaleWay',
                                ),
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 131, 128, 128),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 54, 158, 244)),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: const Text(
                                    "Game Code",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                              TextFormField(
                                key: gameCodeFieldkey,
                                focusNode: gameField,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a value.';
                                  }
                                  return null;
                                },
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'RaleWay',
                                ),
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 131, 128, 128),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 54, 158, 244)),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: const Text(
                                    "Order",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                              TextFormField(
                                key: orderFieldkey,
                                focusNode: orderField,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a value.';
                                  }
                                  return null;
                                },
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'RaleWay',
                                ),
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 131, 128, 128),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 54, 158, 244)),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: const Text(
                                    "Game Icon",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                              RaisedButton(
                                child: const Text('CHOOSE FILE'),
                                onPressed: () async {
                                  FilePickerResult? result =
                                      await FilePicker.platform.pickFiles();
                                  print(">>>>>>>>> called file picker");
                                },
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: const Text(
                                    "Status",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  width: 60.0,
                                  child: FlutterSwitch(
                                    width: 60.0,
                                    height: 30.0,
                                    valueFontSize: 15.0,
                                    toggleSize: 20.0,
                                    value: status,
                                    padding: 5.0,
                                    showOnOff: true,
                                    onToggle: (val) {
                                      setState(() {
                                        status = val;
                                      });
                                    },
                                  )),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        height: 90,
                                        width: 100,
                                        alignment: Alignment.topCenter,
                                        child: Column(children: [
                                          ButtonTheme(
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
                                                              const Provider()));
                                                },
                                                child: const Text('Save')),
                                          ),
                                        ])),
                                    Container(
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
                ))));
  }
}
