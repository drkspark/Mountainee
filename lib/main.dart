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

        child: Column(
          //! This aligns the children to the center of the row
          crossAxisAlignment: CrossAxisAlignment.center,

          //! This aligns the children to the center of the column
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Madhu Sudhan"),
            SizedBox(
              width: 30,
              height: 50,
            ),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text("First"),
                SizedBox(width:15),
                Text("Second")
              ],
            ),
            Text("Soumya"),
            Text("Janani"),
            Text("Vitesh"),
            Text("Abhinay")

          ],
        ),
      ),
    );
  }
}
