import 'package:flutter/material.dart';
import 'package:flutterappdevolope/Views/login.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 250.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80.0),
                      topRight: Radius.circular(80.0))),
              height: MediaQuery.of(context).size.height - 250,
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            prefixIcon: Icon(Icons.perm_identity),
                            hintText: "Enter Username")),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular((15.0))),
                          hintText: "Enter Password"),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Welcome");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15.0)),
                        height: 40.0,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style:
                                TextStyle(fontSize: 20.0, letterSpacing: 2.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: () {
//                        print("clicked");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyLoginInScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15.0)),
                        height: 40.0,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "Go to Login",
                            style:
                                TextStyle(fontSize: 20.0, letterSpacing: 2.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
