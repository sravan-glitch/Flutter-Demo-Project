




import 'package:flutter/material.dart';

class Viewall extends StatelessWidget {
  var data=[
    {"name" : "ananthu", "age" : "73", "admn": 2345},
    {"name" : "reuel", "age" : "43", "admn": 2346},
    {"name" : "akber", "age" : "33", "admn": 2347},
    {"name" : "sravan", "age" : "23", "admn": 2348},
    {"name" : "aditya", "age" : "13", "admn": 2349},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.hourglass_full),
          centerTitle: true,
          title: Text("Sravan's App", style: TextStyle(fontSize: 20.0,letterSpacing: 3.0),),
        ),

        body: Container(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3.0,
                  child: ListTile(
                    leading: Icon(Icons.perm_camera_mic,size: 40.0,),
                    trailing: int.parse(data[index]["age"].toString()) > 45 ? Icon(Icons.print):Icon(Icons.clear),

                    title: Text(
                      "Name :" + data[index]["name"],
                      style: TextStyle(color: Colors.redAccent),
                    ),

                    subtitle: Text("Age :" + data[index]["age"].toString() + "\n"  + "Admn no:" + data[index]["admn"].toString()),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
