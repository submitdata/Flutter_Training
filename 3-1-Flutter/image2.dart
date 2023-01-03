import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
          home:Scaffold
            (
                appBar: AppBar
                  (
                    title:Text("Offline Images")
                ),
              body:Center(
                  child:Column(
                      children: [

                          Image.asset('assets/tops.png',height: 200,scale: 2.5,opacity: const AlwaysStoppedAnimation(0.5),),
                        Image.asset('assets/tops.png',height: 200,scale: 2.5,opacity: const AlwaysStoppedAnimation(0.5),)

                      ],
                  )
              )
            )
      );
  }

}