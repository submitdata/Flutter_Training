//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';

class AddData extends StatefulWidget
{
  @override
  AddDataState createState() => AddDataState();


}

class AddDataState extends State<AddData>
{
  TextEditingController name =TextEditingController();
  TextEditingController surname =TextEditingController();
  TextEditingController email =TextEditingController();

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          appBar: AppBar(

            title: Text("Add New Data"),
          ),

        body: ListView(

            children: [

                TextField(
                    controller: name,
                    decoration: InputDecoration(hintText: 'Enter Name',labelText: "Enter Name"),
                ),

              TextField(
                controller: surname,
                decoration: InputDecoration(hintText: 'Enter Surname',labelText: "Enter Surname"),
              ),

              TextField(
                controller: email,
                decoration: InputDecoration(hintText: 'Enter Email',labelText: "Enter Email"),
              ),

              MaterialButton( child: Text("Add Data"),color: Colors.red,  onPressed: (){


                  insertdata();
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyHome()));

              })


            ],


        ),

      );
  }

  void insertdata()
  {

      var url="https://vyasprakruti.000webhostapp.com/FlutterCrud/insert.php";
      http.post(Uri.parse(url),body: {

          "name" :name.text.toString(),
          "surname" :surname.text.toString(),
          "email" :email.text.toString(),

      });


  }

}