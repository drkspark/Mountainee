import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _mobCntrl = TextEditingController();
  final _passCntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
//! LOGO
            Image.asset("images/logo.png"),
//! Name of  App
            Text(
              "Mountainer's",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.balooBhaijaan().fontFamily,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
//! Mobile No
            TextFormField(
              controller: _mobCntrl,
              maxLength: 10, //? Maximum number of charaters that can be entered
              cursorColor: Colors.black,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefixText: "+91 - ",//Adding the prefix text showing our countries Code
                  label: Text(
                    // "Username",
                    "Mobile No",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
            ),
//! Password

            TextFormField(
              controller: _passCntrl,
              obscureText: true, //? Hides whatever we are writing
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  label: Text(
                "Password",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              )),
            ),
            SizedBox(height: 20),
//! Login Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(onPressed: () {
                  print(_mobCntrl.text);
                  print(_passCntrl.text);
              }, child: Text("Login")),
            ),

//! Recover PassWord
            TextButton(
                onPressed: () {},
                child: Text(
                  "Recover Password",
                  style: TextStyle(color: Colors.white),
                )),

//! Register Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                  onPressed: () {},child: Text("Register")),
            )
          ],
        ),
      ),
    );
  }
}
