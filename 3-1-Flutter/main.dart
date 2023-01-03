import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    
      return MaterialApp
        (
          title:'Network Image',
          theme: ThemeData(
              primarySwatch: Colors.blue,
          ),
          home:MyHomePage(),
          debugShowCheckedModeBanner: false,
        );
    
  }
  
}

class MyHomePage extends StatefulWidget
{
  @override
  _MyHomePageState createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage>
{
  @override
  Widget build(BuildContext context) 
  {
      return Scaffold(
        appBar: AppBar
          (
            title:Text("N Image")
        ),  
        body:
        Padding
          (
            
          padding: const EdgeInsets.all(8.0),
          child:ListView(

              children: [

                  Padding
                  (
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network("https://vyasprakruti.000webhostapp.com/myimages/abcd.jpg"),

                  ),
                Padding
                  (
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network("https://vyasprakruti.000webhostapp.com/myimages/abcd.jpg"),

                ),
                Padding
                  (
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network("https://vyasprakruti.000webhostapp.com/myimages/abcd.jpg"),

                )


              ],

          )

          
        ) ,
        
      );
  }
}
