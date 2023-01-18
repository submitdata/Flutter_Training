//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrudapp/main.dart';

class EditData extends StatefulWidget
{

  final List list;
  final int index;

  EditData({this.list,this.index});

  @override
  EditState createState() => EditState();

}

class EditState  extends State<EditData>
{

    TextEditingController cname;
    TextEditingController cemail;

    void editdata()
    {
      var url="https://vyasprakruti.000webhostapp.com/FlutterCrud/update.php";

      http.post(Uri.parse(url),body: {

          'id':widget.list[widget.index]['id'],
          'name':cname.text.toString(),
          'email':cemail.text.toString(),
      });

    }

    @override
  void initState() {
    // TODO: implement initState
      cname = TextEditingController(text:widget.list[widget.index]['name']);
      cemail = TextEditingController(text:widget.list[widget.index]['email']);
      super.initState();
  }



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

        appBar: AppBar(

            title: Text("Update Data"),

        ),

      body: ListView(

          children: [

              TextField(
                controller: cname,
                decoration: InputDecoration(hintText: "Enter Name",labelText: "Enter Name"),
              ),

            TextField(
              controller: cemail,
              decoration: InputDecoration(hintText: "Enter Email",labelText: "Enter Email"),
            ),


              MaterialButton(child:Text("Edit Data"),onPressed: (){

                editdata();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyHome()));

              })







          ],


      ),


    );
  }

}