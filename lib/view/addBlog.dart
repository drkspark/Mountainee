import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddBlog extends StatefulWidget {
  const AddBlog({Key? key}) : super(key: key);

  @override
  _AddBlogState createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  //! datatype
  XFile? _image;

  //! Using the Image Picker
  getImage(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();

    _image = await _picker.pickImage(source: source);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Blog"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.blue[50],
              height: 200,
              child: _image == null
                  ? _accessImage()
                  : GestureDetector(
                      onTap: () => showDialog(
                          context: context,
                          builder: (context) => Dialog(
                                child: _accessImage(),
                              )),
                      child: Image.file(File(_image!.path))),
            )
          ],
        ),
      ),
    );
  }

  Widget _accessImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              getImage(ImageSource.camera);
            },
            icon: Icon(
              Icons.camera_alt_rounded,
              size: 40,
            )),
        SizedBox(
          width: 15,
        ),
        IconButton(
            onPressed: () {
              getImage(ImageSource.gallery);
            },
            icon: Icon(
              Icons.image_rounded,
              size: 40,
            ))
      ],
    );
  }
}
