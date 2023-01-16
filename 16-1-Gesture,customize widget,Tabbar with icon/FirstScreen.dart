import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget
{

  final List<String>technology = ["Flutter","Android","Java","Php"];

  @override
  Widget build(BuildContext context)
  {
        return MaterialApp(

              debugShowCheckedModeBanner: false,
              home: Scaffold(

                body: ListView.builder(
                    itemCount:technology.length,
                    itemBuilder: (BuildContext context,int index){

                        return Column(

                          children: [

                              ListTile
                                (

                                    title: Text(technology[index]),
                                 ),
                              const Divider(),

                          ],


                        );
                    }),


              ),
        );
  }

}