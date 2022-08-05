// ignore_for_file: deprecated_member_use

import 'package:demo/CreateProvider.dart';
import 'package:demo/Provider_table.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

class ResultLog extends StatefulWidget {
  const ResultLog({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ResultLog();
  }
}

class _ResultLog extends State<ResultLog> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

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
                    color: Color.fromRGBO(238, 238, 238, 1),
                    child: Column(
                      children: <Widget>[
                        Row(children: const [
                          Padding(
                              padding: EdgeInsets.only(
                                bottom: 15.0,
                              ),
                              child: Text(
                                "ResultLog",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontFamily: 'RaleWay',
                                ),
                              )),
                        ]),
                        Container(
                            padding: const EdgeInsets.all(10),
                            color: Colors.white,
                            child: Column(children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    width: 160,
                                    child: Column(
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: const Text(
                                              "From Date",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        TextField(
                                          controller:
                                              dateinput, //editing controller of this TextField
                                          decoration: const InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.calendar_today,
                                              color: Color.fromARGB(
                                                  255, 131, 128, 128),
                                            ),
                                            // icon: Icon(Icons.calendar_today), //icon of text field
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 131, 128, 128),
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 54, 158, 244)),
                                            ),
                                          ),
                                          readOnly:
                                              true, //set it true, so that user will not able to edit text
                                          onTap: () async {
                                            DateTime? pickedDate =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(
                                                        2000), //DateTime.now() - not to allow to choose before today.
                                                    lastDate: DateTime(2101));

                                            if (pickedDate != null) {
                                              print(
                                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                              String formattedDate =
                                                  DateFormat('yyyy-MM-dd')
                                                      .format(pickedDate);
                                              print(
                                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                                              //you can implement different kind of Date Format here according to your requirement

                                              setState(() {
                                                dateinput.text =
                                                    formattedDate; //set output date to TextField value.
                                              });
                                            } else {
                                              print("Date is not selected");
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 160,
                                    child: Column(
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: const Text(
                                              "To Date",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        TextField(
                                          controller:
                                              dateinput, //editing controller of this TextField
                                          decoration: const InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.calendar_today,
                                              color: Color.fromARGB(
                                                  255, 131, 128, 128),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 131, 128, 128),
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 54, 158, 244)),
                                            ),
                                          ),
                                          readOnly:
                                              true, //set it true, so that user will not able to edit text
                                          onTap: () async {
                                            DateTime? pickedDate =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(
                                                        2000), //DateTime.now() - not to allow to choose before today.
                                                    lastDate: DateTime(2101));

                                            if (pickedDate != null) {
                                              print(
                                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                              String formattedDate =
                                                  DateFormat('yyyy-MM-dd')
                                                      .format(pickedDate);
                                              print(
                                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                                              //you can implement different kind of Date Format here according to your requirement

                                              setState(() {
                                                dateinput.text =
                                                    formattedDate; //set output date to TextField value.
                                              });
                                            } else {
                                              print("Date is not selected");
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    child: Column(
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: const Text(
                                              "Select Sub Game",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        TextFormField(
                                          // key: nameFieldKey,
                                          // focusNode: nameField,
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
                                                color: Color.fromARGB(
                                                    255, 131, 128, 128),
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 54, 158, 244)),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.red),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    child: Column(
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: const Text(
                                              "Select Event",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        TextFormField(
                                          // key: nameFieldKey,
                                          // focusNode: nameField,
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
                                                color: Color.fromARGB(
                                                    255, 131, 128, 128),
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 54, 158, 244)),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.red),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(children: <Widget>[
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        width: 250,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                    top: 10, bottom: 10),
                                                child: const Text(
                                                  "Search",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                            TextFormField(
                                              // key: nameFieldKey,
                                              // focusNode: nameField,
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
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 250,
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                    top: 10, bottom: 10),
                                                child: const Text(
                                                  "Select Type",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                            TextFormField(
                                              // key: nameFieldKey,
                                              // focusNode: nameField,
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
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          top: 35,
                                        ),
                                        width: 160,
                                        child: Column(
                                          children: <Widget>[
                                            ButtonTheme(
                                              minWidth: 160.0,
                                              height: 50.0,
                                              child: RaisedButton(
                                                  color: const Color.fromARGB(
                                                      255, 5, 244, 81),
                                                  onPressed: () {
                                                    print('clicked');
                                                  },
                                                  child: const Text('create')),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 160,
                                      ),
                                    ])
                              ])
                            ]))
                      ],
                    ),
                  ),
                ))));
  }
}
