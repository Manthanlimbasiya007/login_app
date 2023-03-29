import 'package:flutter/material.dart';
import 'package:login_app/utils/shared.dart';

class signinscreen extends StatefulWidget {
  const signinscreen({Key? key}) : super(key: key);

  @override
  State<signinscreen> createState() => _signinscreenState();
}

class _signinscreenState extends State<signinscreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SignIn"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtemail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: "Email",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: txtpassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: "Password",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  String userEmail = txtemail.text;
                  String userPassword = txtpassword.text;

                  Shr shr = Shr();
                  Map m1 = await shr.readShr();

                  if (userEmail == m1['e1'] && userPassword == m1['p1']) {
                    shr.createShr(txtemail.text, txtpassword.text, true);
                    Navigator.pushNamed(context, 'home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Invalid Id or Password")));
                  }
                },
                child: Text("SignIn"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'sign');
                },
                child: Text("Don't have account sign up",
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
