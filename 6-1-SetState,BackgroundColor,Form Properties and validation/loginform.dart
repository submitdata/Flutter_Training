//@dart=2.9
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'HomePage.dart';

class LoginFormValidation extends StatefulWidget
{
  @override
  _LoginFormValidationState  createState() => _LoginFormValidationState();

}

class _LoginFormValidationState extends State<LoginFormValidation>
{
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text("Login Page"),
    ),
    body: SingleChildScrollView
      (
          child:Form(
            //autovalidate: true, //check for validation while typing
            key: formkey,
            child:Column(
                children: <Widget>[
             Padding(
              padding: const EdgeInsets.only(top: 60.0),

          ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid email id as abc@gmail.com'),
              validator: MultiValidator([
                RequiredValidator(errorText: "* Required"),
                EmailValidator(errorText: "Enter valid email id"),
              ])),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15, bottom: 0),
          child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter secure password'),
              validator: MultiValidator([
                RequiredValidator(errorText: "* Required"),
                MinLengthValidator(6,
                    errorText: "Password should be atleast 6 characters"),
                MaxLengthValidator(15,
                    errorText:
                    "Password should not be greater than 15 characters")
              ]

            ) ,




          ),
        ),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
        Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20)),
          child: ElevatedButton(
            onPressed: () {
              if (formkey.currentState.validate()) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => HomePage()));
                print("Validated");
              } else {
                print("Not Validated");
              }
            },
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Text('New User? Create Account')




    ]))));


  }

}