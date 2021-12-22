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
                color: Colors.white,
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
          //! Button
          ElevatedButton(
              onPressed: () {
                  //! it helps to navigate => Navigator
                  //! it will connected to the root of the project -root->splashscreen->loginscreen
                  //! push => to push youself on the next page ,
                  //! pop=> it will help you to get back to the earlier page
                  //! materialpageroute will provide me the animation of stock android page chnaging
                  //! context for widget tree
                  //! loginpage , its a page where i want to route my self
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginPage() //? We have created this LoginPage in  loginScreen.dart file, which is being called from here
                  )
                );
              },
              child: Text("Click ME"))
        ],
      ),
    ));
  }
}

void onclick() {
  print("Hello Button");
}
