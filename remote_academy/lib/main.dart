import 'package:flutter/material.dart';
import 'package:remote_academy/pages/4gotpass.dart';
import 'package:remote_academy/pages/login.dart';
import 'package:remote_academy/pages/signup.dart';
import 'package:remote_academy/pages/home.dart';
import 'package:remote_academy/pages/wrapper.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remote Academy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginPage(),
        '/signup': (BuildContext context) => SignUpPage(),
        '/4gotpwd': (BuildContext context) => ForgotPassPage(),
        '/wrapper': (BuildContext context) => WrapperView(),
        '/home': (BuildContext context) => HomePage(),
      },
    );
  }
}