import 'package:flutter/material.dart';

// ignore: camel_case_types
class Provider_table extends StatelessWidget {
  const Provider_table({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView(children: <Widget>[
        DataTable(
          columns: const [
            DataColumn(
                label: Text('Sr',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Provider Name',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Provider Id',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Order',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Icon',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Action',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ],
          rows: const [
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
