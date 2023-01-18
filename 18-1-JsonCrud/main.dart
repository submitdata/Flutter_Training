//@dart=2.9
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'adddata.dart';
import 'details.dart';

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


  Future<List>getdata() async
  {
      final response= await http.get(Uri.parse("https://vyasprakruti.000webhostapp.com/FlutterCrud/view.php"));
      return jsonDecode(response.body);
  }

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
            child: Icon(Icons.add),
          ),
          body:FutureBuilder<List>(

            future: getdata(),
            builder:(ctx,ss)
            {
                if(ss.hasError)
                  {
                    print("Error");
                  }
                  if(ss.hasData)
                    {
                      return Items(list: ss.data);
                    }
                  else{
                    return CircularProgressIndicator();
                  }
            },


      ));
  }

}
class Items extends StatelessWidget
{
    List list;

    Items({this.list});

  @override
  Widget build(BuildContext context)
  {
      return ListView.builder(

          itemCount: list==null?0:list.length,
          itemBuilder: (ctx,i)
        {
              return ListTile(

                //leading: Icon(Icons.message),
                title:Text(list[i]["name"]),
                subtitle: Text(list[i]["email"]),
                onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> Details(list:list,index:i))),
              );
        });


  }

}
