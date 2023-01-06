//@dart=2.9
import 'package:flutter/material.dart';

import 'backgroundimagechange.dart';
import 'loginform.dart';

void main()
{
  runApp(BackgroundImage());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,

        ),
      home: LoginFormValidation(),
    );
  }

}


