import 'package:classes/view/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
    theme: ThemeData(primaryColor: Colors.black),
    debugShowCheckedModeBanner: false,
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(); //! Directly calling the SplashScreen
    /*Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        color: Colors.redAccent,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset("images/logo.png"),
            Text(
              "Mountainer's",
              style: TextStyle(
                color: Colors.white,
                fontFamily: GoogleFonts.balooBhaijaan().fontFamily,
                fontSize: 45,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "This is my first time Doing this",
              style: TextStyle(
                fontSize: 15
              ),
            )
          ],
        ),
      )
    );
    */
  }
}
