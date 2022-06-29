import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(40.0),
      color: Colors.grey.shade200,
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 20, top: 10),
              child: Text(
                "Dashboards",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 13, 13, 13),
                  fontSize: 18,
                  fontFamily: 'RaleWay',
                ),
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: const EdgeInsets.only(right: 20.0),
                  width: 100,
                  height: 100,
                  child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        "MIGRATION AND RESOLVE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: const EdgeInsets.only(right: 20.0),
                  width: 100,
                  height: 100,
                  child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        "MIGRATION AND RESOLVE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: const EdgeInsets.only(right: 20.0),
                  width: 100,
                  height: 100,
                  child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        "MIGRATION AND RESOLVE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: const EdgeInsets.only(right: 20.0),
                  width: 100,
                  height: 100,
                  child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        "MIGRATION AND RESOLVE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      )),
                ),
              ),
            ],
          ),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(120.0),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text('Website', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(children: [
                      Text('Tutorial', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(children: [
                      Text('Review', style: TextStyle(fontSize: 20.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Javatpoint')]),
                    Column(children: [Text('Flutter')]),
                    Column(children: [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Javatpoint')]),
                    Column(children: [Text('MySQL')]),
                    Column(children: [Text('5*')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Javatpoint')]),
                    Column(children: [Text('ReactJS')]),
                    Column(children: [Text('5*')]),
                  ]),
                ],
              ),
            ),
          ]),
        ],
      ),
    ));
  }
}
