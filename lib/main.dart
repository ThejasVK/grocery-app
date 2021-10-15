import 'package:flutter/material.dart';
import 'package:grocery/homepage.dart';
import 'package:grocery/pages/register/register_page.dart';
import 'package:grocery/pages/login/login_page.dart';

void main() => runApp(new MyApp());

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) => new HomePage(),
  '/register': (BuildContext context) => new RegisterPage(),
  '/': (BuildContext context) => new LoginPage(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login  RegisterApp',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.teal),
      routes: routes,
    );
  }
}
