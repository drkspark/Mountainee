import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //! Form Key
  final _formKey = GlobalKey<FormState>();

  //! Controllers
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _mobile = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _about = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.redAccent,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(children: [
//! Image
            Image.asset(
              "images/logo.png",
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
//! Form Validation
            Form(
              key: _formKey,
              child: Column(
                children: [
//! FirstName
                  TextFormField(
                    controller: _firstName,
                    validator: (value) {
                      if (value == "" || value == null)
                        return "Field Left Empty";
                      else {
                        if (value[0] == ' ')
                          return "No space allowed";
                        else
                          return null;
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        label: Text(
                          // "Username",
                          "First Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        errorStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red[900])),
                  ),

                  //! LastName
                  TextFormField(
                    controller: _lastName,
                    validator: (value) {
                      if (value == "" || value == null)
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
                        ),
                        errorStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red[900])),
                  ),

                  //! Email
                  TextFormField(
                    controller: _email,
                    validator: (value) {
                      if (value == "" || value == null)
                        return "Field Left Empty";
                      else if (value[0] == ' ')
                        return "No space allowed";
                      else if (value[0] == ' ')
                        return "No space allowed";
                      //? Used Regex Expression here
                      else if (RegExp(
                                  "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]")
                              .hasMatch(value) ==
                          false)
                        return "Invalid Email";
                      else if (value.length < 12) {
                        return "Min Length is 12";
                      }
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
                        ),
                        errorStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red[900])),
                  ),

                  //! Mobile
                  TextFormField(
                    controller: _mobile,
                    maxLength: //? It automatically  adds a small character count beneth the FormField
                        10, //? Maximum number of charaters that can be entered
                    validator: (value) {
                      if (value == "" || value == null)
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
                        errorStyle: TextStyle(color: Colors.red[900])),
                  ),
//! About U
                  TextFormField(
                    controller: _about,
                    // maxLines: 4,// Or
                    maxLength: 250, //Words
                    validator: (value) {
                      if (value == "" || value == null)
                        return "Field Left Empty";
                      else
                        return null;
                    },
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              // Here we don't need to use setstate as it will be very naive to channge state if we just want to clear the text
                              // The same goes with other widgets too, they will never reload the state if they are just removing the data
                              _about.clear();
                            },
                            icon: Icon(Icons.clear)),
                        label: Text(
                          "About You",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        errorStyle: TextStyle(color: Colors.red[900])),
                  ),

//! Password
                  TextFormField(
                    controller: _password,
                    obscureText: true, //? Hides whatever we are writing
                    validator: (value) {
                      if (value == "" || value == null)
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
                        errorStyle: TextStyle(color: Colors.red[900])),
                  ),

                  //! Confirm Password
                  TextFormField(
                    controller: _confirmPassword,
                    obscureText: true, //? Hides whatever we are writing
                    validator: (value) {
                      if (value == "" || value == null)
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
                        errorStyle: TextStyle(color: Colors.red[900])),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),

//! Register Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (_password.text == _confirmPassword.text) {
                        print("Password good to go");
                      } else {
                        _password.clear();
                        _confirmPassword.clear();
                        print("You need to check password");
                      }
                    }
                  },
                  child: Text("Register")),
            )
          ])),
    );
  }
}
