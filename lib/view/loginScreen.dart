import 'package:classes/view/splashScreen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //! AppBar has a defaultt back Button which helps us navigate to our previous page without any code
        title: Text("Login Page"),
      ),
      body: Center(
        // child: Text("LoginPage"),

        //? How to use Navigator pop to go back to the previous page
        child: ElevatedButton(
            onPressed: () {
              //? pop takes u back to the previous page
              Navigator.of(context).pop(context);
            },
            child: Text("Go Back")),
      ),
    );
  }
}
