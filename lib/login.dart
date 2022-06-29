import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF151026);
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome To Login'),
        ),
        body: Container(
          decoration: BoxDecoration(
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
                color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                border: Border.all(
                  color: Color.fromARGB(
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
                                initialValue: "bunny",
                                decoration: InputDecoration(
                                  labelText: "UserName",
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Icon(
                                        Icons.remove_red_eye,
                                      ),
                                    )),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          primary: Color.fromARGB(255, 243, 128, 5),
                          minimumSize: Size(420, 40),
                        ),
                        onPressed: () {
                          print("login done");
                        },
                      )
                    ]),
              )),
        ));
  }
}
