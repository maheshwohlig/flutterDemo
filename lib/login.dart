// ignore_for_file: unnecessary_new

import 'package:demo/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final userController = TextEditingController(text: "bunny");
  final passwordController = TextEditingController(text: "");

  LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome To Login'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("login-bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: Container(
              width: 500,
              height: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                border: Border.all(
                  color: const Color.fromARGB(
                    255,
                    243,
                    128,
                    5,
                  ),
                  width: 2,
                ),
              ),
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                        ),
                        child: Image.asset("images/PlayExch-logo_w.png",
                            width: 300, height: 100),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: userController,
                                decoration: const InputDecoration(
                                  labelText: "UserName",
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                controller: passwordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                    labelText: "Password",
                                    suffixIcon: Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Icon(
                                        Icons.remove_red_eye,
                                      ),
                                    )),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        // ignore: sort_child_properties_last
                        child: const Text("Login"),
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          primary: const Color.fromARGB(255, 243, 128, 5),
                          minimumSize: const Size(420, 40),
                        ),
                        onPressed: () {
                          debugPrint(userController.value.text);
                          debugPrint(passwordController.value.text);
                        },
                      )
                    ]),
              )),
        ));
  }
}
