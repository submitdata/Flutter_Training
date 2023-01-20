//@dart=2.9
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'login.dart';



class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>
{
  final _formKey = GlobalKey<FormState>();

  String fname,lname,email, password;

  bool isLoading=false;
  GlobalKey<ScaffoldState>_scaffoldKey=GlobalKey();
  ScaffoldMessengerState scaffoldMessenger ;
  var reg=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  TextEditingController _fnameController=new TextEditingController();
  TextEditingController _lnameController=new TextEditingController();
  TextEditingController _emailController=new TextEditingController();
  TextEditingController _passwordController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    scaffoldMessenger = ScaffoldMessenger.of(context);
    return Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    color:Colors.green

                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                      ),
                      SizedBox(
                        height: 13,
                      ),

                      SizedBox(
                        height: 5,
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Form(
                        key: _formKey,
                        child: Container(
                          margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: _fnameController,

                                decoration: InputDecoration(

                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)),
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      color: Colors.white70, fontSize: 15),
                                ),
                                onSaved: (val) {
                                  fname = val;
                                },
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: _lnameController,

                                decoration: InputDecoration(

                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)),
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      color: Colors.white70, fontSize: 15),
                                ),
                                onSaved: (val) {
                                  lname = val;
                                },
                              ),
                              SizedBox(
                                height: 16,
                              ),

                              TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: _emailController,

                                decoration: InputDecoration(

                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)),
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      color: Colors.white70, fontSize: 15),
                                ),
                                onSaved: (val) {
                                  email = val;
                                },
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white)),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.white70, fontSize: 15),
                                ),
                                onSaved: (val) {
                                  password = val;
                                },
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 0),
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                        if(isLoading)
                                        {
                                          return;
                                        }
                                        if(_fnameController.text.isEmpty)
                                        {
                                          scaffoldMessenger.showSnackBar(SnackBar(content:Text("Please Enter Name")));
                                          return;
                                        }
                                        if(_lnameController.text.isEmpty)
                                        {
                                          scaffoldMessenger.showSnackBar(SnackBar(content:Text("Please Enter Name")));
                                          return;
                                        }
                                        if(!reg.hasMatch(_emailController.text))
                                        {
                                          scaffoldMessenger.showSnackBar(SnackBar(content:Text("Enter Valid Email")));
                                          return;
                                        }
                                        if(_passwordController.text.isEmpty||_passwordController.text.length<6)
                                        {
                                          scaffoldMessenger.showSnackBar(SnackBar(content:Text("Password should be min 6 characters")));
                                          return;
                                        }
                                        signup(_fnameController.text.toString(),_lnameController.text.toString(),_emailController.text.toString(),_passwordController.text.toString());
                                      },

                                    ),
                                  ),
                                  Positioned(child: (isLoading)?Center(child: Container(height:26,width: 26,child: CircularProgressIndicator(backgroundColor: Colors.green,))):Container(),right: 30,bottom: 0,top: 0,)

                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, "/signin");
                        },

                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  signup(fname,lname,email,password) async
  {
    setState(() {
      isLoading=true;
    });
    print("Calling");

    Map data = {
      'firstname': fname,
      'lastname': lname,
      'email': email,
      'password': password
    };
    print(data.toString());

    final  response= await http.post(
        Uri.parse("https://vyasprakruti.000webhostapp.com/FlutterCrud/register.php"),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded"
        },


        body: data,
        encoding: Encoding.getByName("utf-8")
    )  ;

    if (response.statusCode == 200) {

      setState(() {
        isLoading=false;
      });

      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Login()));


    }
    else
    {
      scaffoldMessenger.showSnackBar(SnackBar(content:Text("Please Try again")));
    }



  }


}