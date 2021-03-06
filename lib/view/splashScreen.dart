import 'dart:async';

import 'package:classes/view/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _screenTimer();
    super.initState();
  }

  void _screenTimer() {
    Timer(Duration(seconds: 3), _navigate);
  }

  void _navigate() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.redAccent,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Text(
              "Mountainer's",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.balooBhaijaan().fontFamily,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Heaven for Mountain Climber's",
              style: TextStyle(fontSize: 15),
            ),
            Text("Version 1.0"),
          ]),
    ));
  }
}

void onclick() {
  print("Hello Button");
}
