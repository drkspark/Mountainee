import 'package:flutter/material.dart';

class BlogDetail extends StatefulWidget {
  @override
  _BlogDetailState createState() => _BlogDetailState();
}

class _BlogDetailState extends State<BlogDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog Details"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Details"),
        ),
      ),
    );
  }
}
