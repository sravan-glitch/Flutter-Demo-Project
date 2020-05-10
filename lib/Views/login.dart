import 'package:flutter/material.dart';
import 'package:flutterappdevolope/Views/mainapp.dart';

class MyLoginInScreen extends StatelessWidget {
  TextEditingController usertextcontroller = TextEditingController();
  TextEditingController passtextcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.hourglass_full),
          title: Text(
            "Sravan's App",
            style: TextStyle(fontSize: 20.0, letterSpacing: 3.0),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  controller: usertextcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      prefixIcon: Icon(Icons.perm_identity),
                      hintText: "Enter Username")),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: passtextcontroller,
                obscureText: true,
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
                  var getUsername = usertextcontroller.text;
                  var getPassname = passtextcontroller.text;
                  if (getUsername == 'admin' && getPassname == '1234') {
//                    print("logged in");
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Viewall()
                  ));
                  } else {
//                    print("invalid username or password");
                  }
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
                      style: TextStyle(fontSize: 20.0, letterSpacing: 2.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
