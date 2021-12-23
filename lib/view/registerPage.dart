import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //! Controllers
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _mobile = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

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
//! Image
            Image.asset("images/logo.png",
            //height: 200,
            ),

//! App Name
            Text(
              "Mountainer's",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.balooBhaijaan().fontFamily,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  
              ),
            ),
//! FirstName
                  TextFormField(
                    controller: _firstName,
                    validator: (value) {
                      if (value == null)
                        return "Field Left Empty";
                      else
                        return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        label: Text(
                          // "Username",
                          "First Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                  ),

//! LastName
                  TextFormField(
                    controller: _lastName,
                    validator: (value) {
                      if (value == null)
                        return "Field Left Empty";
                      else
                        return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        label: Text(
                          "Last Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                  ),

//! Email
                  TextFormField(
                    controller: _email,
                    validator: (value) {
                      if (value == null)
                        return "Field Left Empty";
                      else
                        return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        label: Text(
                          "Email",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                  ),

//! Mobile
                  TextFormField(
                    controller: _mobile,
                    maxLength: //? It automatically  adds a small character count beneth the FormField
                        10, //? Maximum number of charaters that can be entered
                    validator: (value) {
                      if (value == null)
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
                        )),
                  ),

//! Password
                  TextFormField(
                    controller: _password,
                    obscureText: true, //? Hides whatever we are writing
                    validator: (value) {
                      if (value == null)
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
                    )),
                  ),

//! Confirm Password
                  TextFormField(
                    controller: _confirmPassword,
                    obscureText: true, //? Hides whatever we are writing
                    validator: (value) {
                      if (value == null)
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
                    )),
                  ),

                  SizedBox(height: 40,),

//! Register Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                  onPressed: () {
            
            
                  },
                  child: Text("Register")),
            )
          ]
        )
      ),
    );
  }
}
