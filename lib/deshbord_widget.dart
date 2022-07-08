import 'package:flutter/material.dart';

class Deshbord_widget extends StatelessWidget {
  const Deshbord_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 10),
      color: Colors.grey.shade200,
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 0,
                        color: Colors.grey.shade200,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: const EdgeInsets.only(right: 20.0),
                  height: 280,
                  child: Column(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(
                              left: 30.0, top: 25.0, right: 30.0, bottom: 5),
                          child: Text(
                            "MIGRATION AND RESOLVE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          )),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              alignment: Alignment.center,
                              width: 40,
                              height: 38,
                              margin: const EdgeInsets.only(left: 42.0),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              child: const Icon(
                                Icons.cached,
                                size: 24.0,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: const EdgeInsets.only(right: 20.0),
                  height: 340,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 5.0, right: 5.0),
                              child: Icon(
                                Icons.cached,
                                size: 20.0,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          )
                        ],
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 42.0, bottom: 5.0),
                              child: const Text(
                                "RESOLVE ALL",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ))),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              alignment: Alignment.center,
                              width: 40,
                              height: 38,
                              margin: const EdgeInsets.only(left: 42.0),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              child: const Icon(
                                Icons.cached,
                                size: 24.0,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: const EdgeInsets.only(right: 20.0),
                  height: 280,
                  child: Column(children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(top: 5.0, right: 5.0),
                          child: Icon(
                            Icons.cached,
                            size: 20.0,
                            color: Colors.grey.shade500,
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.only(left: 32.0),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 110, 120, 212),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: const Icon(
                            Icons.campaign,
                            size: 24.0,
                            color: Color.fromARGB(255, 250, 248, 248),
                          ),
                        ),
                        Column(
                          children: [
                            Row(children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 15.0, top: 5.0),
                                child: const Icon(
                                  Icons.arrow_downward,
                                  size: 20.0,
                                  color: Color.fromARGB(255, 211, 11, 11),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 5.0, top: 5.0),
                                child: const Text(
                                  " ITEM SALES",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ]),
                            Container(
                              margin: const EdgeInsets.only(top: 5.0),
                              child: const Text(
                                "6,101",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 81, 79, 79),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
