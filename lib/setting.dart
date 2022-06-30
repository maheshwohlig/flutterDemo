// TODO Implement this library.class SignedContracts extends StatelessWidget {
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
        alignment: Alignment.centerLeft,
        //height: 500,
        padding: EdgeInsets.all(30),

        //color: Colors.black,
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Signed Contracts",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Multiple Rights Agreement",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "Sound Recording Licence",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "Merchandising Agreement",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "Synchronisation Licence",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "Artist Development Agreement",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "Management Agreement",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Manage Contracts",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
