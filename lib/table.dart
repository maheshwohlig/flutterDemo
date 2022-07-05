import 'package:flutter/material.dart';

class TableData extends StatelessWidget {
  const TableData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
          ),
        ),
        DataColumn(
          label: Text(
            'subject',
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
          ),
        ),
        DataColumn(
          label: Text(
            'Amout',
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              'Sarah',
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
            )),
            DataCell(Text(
              'Rahul',
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
            )),
            DataCell(Text(
              'Bunny',
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
            )),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              '123',
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
            )),
            DataCell(Text(
              '123',
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
            )),
            DataCell(Text(
              '123',
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
            )),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              'abc',
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
            )),
            DataCell(Text(
              'abc',
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
            )),
            DataCell(Text(
              'abca',
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
            )),
          ],
        ),
      ],
    );
  }
}
