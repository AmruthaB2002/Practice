import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/App_sample/Login.dart';
import 'package:practice/App_sample/Stateful_login.dart';
//import 'package:project_june1/stateful%20login%20with%20validation.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  //splash3 is initially immutable
  @override
  State<Splash> createState() =>
      _Splash3State(); //createState() will  creatae a mutable state for splash3
}

class _Splash3State extends State<Splash> {
  @override
  void initState() {
    //what will happen when the app or page is first launched
    Timer(Duration(seconds: 3), () {
      // Navigator.of(context)
      //     .pushReplacement(MaterialPageRoute(builder: (context) => Login()));

       Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Stf_Login()));

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.cyan[50],
      body: Center(
        child: SizedBox(height: 250,width: 250,
          child: Image.network("assets/icons/chat-icon.png")),
      ),
    );
  }
}