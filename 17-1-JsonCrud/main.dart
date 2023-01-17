import 'package:flutter/material.dart';

import 'adddata.dart';

void main() 
{
  runApp(MaterialApp(

      title: "Online database Example",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home:MyHome()

  ));
}

class MyHome extends StatefulWidget
{
  @override
  MyHomeState createState() => MyHomeState();


  
}

class MyHomeState extends State<MyHome>
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(
            title: Text("Json Parsing"),
        ),
        floatingActionButton: FloatingActionButton
          (
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AddData())),
          ),

      );
  }

}
