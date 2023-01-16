import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp3 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(

          title: "Gesture Example",
          home: MyHomePage(title:"firstpage"),

      );
  }

}

class MyHomePage extends StatelessWidget
{
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);



  @override
  Widget build(BuildContext context)
  {

          return Scaffold(

              appBar: AppBar(

                title: Text('Data'),

              ),
            body: Center(child: MyButton(),),

          );

  }


}

class MyButton extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return GestureDetector(

        onLongPress:()
      {
          const snackbar = SnackBar(content: Text("You just tapped the button"));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
      },

      child: Container(

          decoration: BoxDecoration(

            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(8.0),

          ),

        child: Text('Click Here'),
      ),




      );
  }

}