import 'package:flutter/material.dart';

import 'FirstScreen.dart';
import 'SecondScreen.dart';
import 'fluttergesturesex.dart';

void main()
{
  runApp(MyApp3());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(

          home:DefaultTabController(

              length: 2,
              child: Scaffold(

                appBar: AppBar
                  (
                    title: Text('Flutter Tab Demo'),
                    bottom: TabBar(
                        tabs: [

                          Tab(icon: Icon(Icons.contacts),text:"Contact us"),
                          Tab(icon:Icon(Icons.camera),text:"Click Here"),


                        ],

                    ),
                ),
                body: TabBarView(
                    children: [

                        FirstScreen(),
                        SecondScreen()

                    ],

                ),



              )
            ,

          )

      );
  }

}
