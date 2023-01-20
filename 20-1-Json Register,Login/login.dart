import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registerlogin/screens/signup.dart';
import 'package:http/http.dart' as http;
class Login extends StatefulWidget
{
  @override
  LoginState createState() => LoginState();


}

class LoginState extends State<Login>
{

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();


  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(
          title: Text(
            'Login SignUp',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          height: 300,
          child: Card(
            color: Colors.amber,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    controller: email,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    controller: pass,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        color: Colors.pink,
                        child: Text('Login',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        onPressed: () {
                          login();
                        },
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        color: Colors.amber[100],
                        child: Text('Register',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );




  }

  Future login()  async{


    var url="https://vyasprakruti.000webhostapp.com/FlutterCrud/login.php";
    var response = await http.post(Uri.parse(url), body: {
      "myemail": email.text.toString(),
      "mypass": pass.text.toString(),
    });

    var data = json.decode(response.body);

    if(data==0)
    {
      print("fail2");
    }
    else
    {
      print("success2");

    }


  }

}