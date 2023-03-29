import 'package:flutter/material.dart';
import 'package:login_app/screen/view/home_screen.dart';
import 'package:login_app/screen/view/signin_screen.dart';
import 'package:login_app/screen/view/signup_screen.dart';
import 'package:login_app/screen/view/splesh_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => spleshscreen(),
        'signin':(context) => signinscreen(),
        'sign':(context) => signupscreen(),
        'home':(context) => homescreen(),
      },
    ),
  );
}
