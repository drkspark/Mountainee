import 'package:flutter/material.dart';

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
        //! Devices Height and Width
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        /*
        child: ListView(
          children: [
            for(int i=0;i<100;i++)
              Text("Hello")
          ],
        ),
        */
        child: ListView.builder(
          itemBuilder: (context, i) {
            return Text("Madhu Sudhan");
          },
          itemCount: 100,
        ),
      ),
    );
  }
}
