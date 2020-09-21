import 'package:flutter/material.dart';
//import 'package:test1/Screens/LoginScreen.dart';
import 'package:test1/Screens/Navigationbar.dart';
//import 'package:test1/Screens/Signupscreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: JiJiNavigationBar(),
    );
  }
}
