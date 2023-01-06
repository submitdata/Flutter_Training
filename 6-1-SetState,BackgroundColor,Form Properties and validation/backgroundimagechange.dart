import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(

      home:Scaffold(
          body: View(),
      )

    );
  }

}

class View extends StatefulWidget
{
  @override
  ViewState createState() => ViewState();


}

class ViewState extends State
{

  Color colorcode =Colors.lightBlue;
  final Random random = Random();

  getrandomcolor()
  {
    Color tmpcolor = Color.fromARGB(random.nextInt(256), random.nextInt(256), random.nextInt(256), random.nextInt(256));

      setState(() {

          colorcode = tmpcolor;

      });

  }



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        backgroundColor: colorcode,
        appBar: AppBar(
            title:Text('Generate Color')
        ),
    body:Center(
      child: Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(onPressed: () {
            getrandomcolor();

  }, child: Text('Click Me'),),
    ),

    )

    );
  }

}