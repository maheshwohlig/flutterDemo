// ignore_for_file: deprecated_member_use

import 'package:demo/CreateProvider.dart';
import 'package:demo/Provider.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Provider_table extends StatefulWidget {
  const Provider_table({Key? key}) : super(key: key);

  @override
  @override
  State<Provider_table> createState() => Provider_tableState();
}

// ignore: camel_case_types
class Provider_tableState extends State<Provider_table> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView(children: <Widget>[
        DataTable(
          border: const TableBorder(
              top: BorderSide(
                  color: Color.fromARGB(255, 218, 218, 223),
                  style: BorderStyle.solid)),
          columns: const [
            DataColumn(
                label: Text('Sr',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Provider Name',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Provider Id',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Order',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Icon',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Action',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
          ],
          rows: [
            DataRow(cells: [
              const DataCell(Text('1')),
              const DataCell(Text('Stephen')),
              const DataCell(Text('Actor')),
              const DataCell(Text('Scientist')),
              const DataCell(Text('Scientist')),
              DataCell(
                Expanded(
                    child: Column(children: [
                  ButtonTheme(
                    minWidth: 50.0,
                    height: 35.0,
                    child: RaisedButton(
                        color: const Color.fromARGB(255, 5, 244, 81),
                        onPressed: () {
                          var value = "editProvider";
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CreateProvider(value: value),
                            ),
                          );
                        },
                        // onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             CreateProvider(value: value)));
                        //   Navigator.of(context).pushNamed('CreateProvider',
                        //       arguments: {"value": value});
                        // },
                        child: const Text('Edit')),
                  ),
                ])),
              ),
            ]),
            const DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(Text('Scientist')),
              DataCell(Text('Scientist')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(Text('Scientist')),
              DataCell(Text('Scientist')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(Text('Scientist')),
              DataCell(Text('Scientist')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(Text('Scientist')),
              DataCell(Text('Scientist')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(Text('Scientist')),
              DataCell(Text('Scientist')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(Text('Scientist')),
              DataCell(Text('Scientist')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(Text('Scientist')),
              DataCell(Text('Scientist')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(Text('Scientist')),
              DataCell(Text('Scientist')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(Text('Scientist')),
              DataCell(Text('Scientist')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(Text('Scientist')),
              DataCell(Text('Scientist')),
              DataCell(Text('Actor')),
            ]),
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Stephen')),
              DataCell(Text('Actor')),
              DataCell(Text('Scientist')),
              DataCell(Text('Scientist')),
              DataCell(Text('Actor')),
            ]),
          ],
        ),
      ])),
    );
  }
}
