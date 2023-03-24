import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            "Welcome Back!!!",
            style: TextStyle(color: Colors.black,fontSize: 30),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
