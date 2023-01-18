//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrudapp/main.dart';

import 'editdata.dart';
class Details extends StatefulWidget
{

  List list;
  int index;


  Details({this.list,this.index});

  @override
  DetailsState createState() =>DetailsState();


}

class DetailsState  extends State<Details>
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          appBar: AppBar(
              title: Text('${widget.list[widget.index]['name']}'),
          ),
          body: Container(

            child: Column(

                children: [

                    Text(
                        widget.list[widget.index]['name']
                      ,style: TextStyle(fontSize: 20.0),
                    ),

                  Text(
                    widget.list[widget.index]['email']
                    ,style: TextStyle(fontSize: 20.0),
                  ),

                  MaterialButton(child:Text("Edit"),onPressed: ()=>  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => EditData(list:widget.list,index:widget.index)))   ),

                  MaterialButton(child:Text("Delete"),onPressed: ()=> confirm()),





                ],


            ),

          ),


      );
  }

  confirm()
  {

      AlertDialog alertDialog = AlertDialog(

        content: Text("Are you Sure?"),
        actions: [

          MaterialButton(child:Text("OK"),onPressed: (){
              deletedata();
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyHome()));
          }),
          MaterialButton(child:Text("CANCEL"),onPressed:(){})

        ],

      );

      showDialog(context: context, builder: (context)=>alertDialog);

  }

  void deletedata()
  {
      var url="https://vyasprakruti.000webhostapp.com/FlutterCrud/delete.php";
      http.post(Uri.parse(url),body: {'id':widget.list[widget.index]['id'],
      });

  }

}