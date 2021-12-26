import 'package:classes/view/registerPage.dart';
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
  bool _visibility = true;

  //! Key
  final _formKey = GlobalKey<FormState>(); //?  Creates a [LabeledGlobalKey], which is a [GlobalKey] with a label used for debugging.
  //? The label is purely for debugging and not used for comparing the identity of the key.

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

//! Form : For Validation
            Form(
              key: _formKey,
              child: Column(
                children: [
//! Mobile No
                  TextFormField(
                    controller: _mobCntrl,
                    maxLength: //? It automatically  adds a small character count beneth the FormField
                        10, //? Maximum number of charaters that can be entered
                    validator: (value) {
                      if (value=="" || value == null)
                        return "Field Left Empty";
                      else
                        return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixText:
                            "+91 - ", //Adding the prefix text showing our countries Code
                        label: Text(
                          // "Username",
                          "Mobile No",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        errorStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.red[900])
                    ),
                  ),
                  //! Password

                  TextFormField(
                    controller: _passCntrl,
                    obscureText: _visibility, //? Hides whatever we are writing
                    validator: (value) {
                      if (value=="" || value == null)
                        return "Field Left Empty";
                      else
                        return null;
                    },
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      label: Text(
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _visibility = !_visibility;
                            });
                          },
                          icon: Icon(_visibility
                              ? Icons.visibility
                              : Icons.visibility_off)
                      ),
                      errorStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.red[900])
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

//! Login Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("We are good to go to login screen");
                    } else {
                      print("Error");
                    }
                  },
                  child: Text("Login")
              ),
            ),

//! Recover PassWord
            TextButton(
                onPressed: () {},
                child: Text(
                  "Recover Password",
                  style: TextStyle(color: Colors.white),
                )
            ),

//! Register Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Text("Register")),
            )
          ],
        ),
      ),
    );
  }
}
