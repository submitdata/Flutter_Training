import 'package:flutter/material.dart';

import 'FormEx.dart';

void main()
{
  runApp(
      MaterialApp
        (
            home: MyApp2(),
      )
  );

}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      theme: ThemeData
        (
          colorSchemeSeed: Color(0xffc13030),
          useMaterial3: true
        ),
      home: FabExample(),

      );

  }

}

class FabExample extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar
          (
            title:Text("Floating action Type-1")
          ),
          body: Center
            (
              child:Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                            Text('Small'),
                            SizedBox(width: 16,),
                            FloatingActionButton.small
                            (
                            onPressed: ()
                            {
                              // Add your onPressed code here!
                            },
                            child: const Icon(Icons.add),
                          ),


                        ],

                    ),

                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text('Regular'),
                      SizedBox(width: 16,),
                      FloatingActionButton
                        (
                        onPressed: ()
                        {
                          // Add your onPressed code here!
                        },
                        child: const Icon(Icons.add),
                      ),


                    ],

                  ),

                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text('Large'),
                      SizedBox(width: 16,),
                      FloatingActionButton.large(

                        onPressed: ()
                        {
                          // Add your onPressed code here!
                        },
                        child: const Icon(Icons.add),
                      ),


                    ],

                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text('Extended'),
                      SizedBox(width: 16,),
                      FloatingActionButton.extended
                        (
                        label:Text('Extended'),
                        onPressed: ()
                        {
                          // Add your onPressed code here!
                        },
                        icon: const Icon(Icons.add),
                      ),


                    ],

                  ),






                ],

              ),

            ),


           // --------------Type 1---------------------
            /*floatingActionButton: FloatingActionButton(
              onPressed: ()
            {

                print('Floating Button Click ');

            },

            backgroundColor: Colors.green,
            child: Icon(Icons.navigation),


            ),*/

      // --------------Type 2---------------------

       /* floatingActionButton: FloatingActionButton.extended(
          onPressed: ()
          {

            print('Floating Button Click ');

          },
          label: Text('Approve'),
          backgroundColor: Colors.green,
          icon: Icon(Icons.navigation),


        )*/

      // --------------Type 3---------------------

       /* floatingActionButton: FloatingActionButton(
          onPressed: ()
          {

            print('Floating Button Click ');

          },

          child: Icon(Icons.navigation),


        )*/

      // --------------Type 4---------------------
    );
  }

}
