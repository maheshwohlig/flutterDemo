import 'package:flutter/material.dart';

// ignore: camel_case_types
class ProviderTable extends StatelessWidget {
  const ProviderTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(minWidth: constraints.minWidth),
                        child: DataTable(
                          border: const TableBorder(
                              top: BorderSide(
                                  color: Color.fromARGB(255, 218, 218, 223),
                                  style: BorderStyle.solid)),
                          columns: const [
                            DataColumn(
                                label: Text('Sr',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Provider Name',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Provider Id',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Order',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Icon',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Action',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))),
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
