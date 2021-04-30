import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());  
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),

      debugShowCheckedModeBanner:false ,//delete banner in appbar

      home: MyHomePage(),//call my home page
    );
  }

}
class MyHomePage extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
     return DefaultTabController(
       length: 3,
       child: Scaffold( //it has appbar,body
          appBar: AppBar(
            title: Text("todo",style: TextStyle(fontSize: 25.0,fontFamily: "RaleWay"),),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},
            ),

            actions: [
              IconButton(
                icon: Icon(Icons.search),//search button
                onPressed: (){},
              ),

              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){},
              ),
            ],//widget array

            //set back image in background of appbar
            // flexibleSpace: Icon(
            //   Icons.photo_camera,
            //   size: 75.0,
            // ),
          //  flexibleSpace: Image(
          //   image: AssetImage('assets/back.jpg'),
          //   fit: BoxFit.cover,
          // ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car),text: 'To Do',),
              Tab(icon: Icon(Icons.directions_transit),text: 'In Progress',),
              Tab(icon: Icon(Icons.directions_bike),text: 'Done',),
            ],
          ),

          elevation: 3.0, //shadow of the bottom
          backgroundColor: Colors.blueAccent[700],
           
        ),
        body: TabBarView(
          children: [
            tab1(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
          
        ),
        

       ),
     );
    }
}

Widget tab1(){
  return Container(
    child: Center(
      child: Text("tab1"),
    ),
  );
}
