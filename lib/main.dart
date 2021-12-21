import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
    debugShowCheckedModeBanner: false,
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
  }
}