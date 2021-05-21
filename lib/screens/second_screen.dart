import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
            title: Text("todo",style: TextStyle(fontSize: 25.0,fontFamily: "RaleWay"),),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},
            ),
        ),
        body: Center(
          child: Text("second screen"),
    ),
  );
  }
}