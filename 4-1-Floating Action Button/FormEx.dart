import 'package:flutter/material.dart';

class MyApp2 extends StatefulWidget
{
  @override
  _State createState() => _State();
}

class _State extends State<MyApp2>
{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial - googleflutter.com'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),

                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                ElevatedButton(

                  child: Text('Login'),
                  onPressed: ()
                  {
                    String name1 = nameController.text.toString();
                    String pass1 = passwordController.text.toString();

                    print("Your Name is $name1");
                    print("Your Password is $pass1");
                  },
                )
              ],
            )
        )
    );
  }
}
