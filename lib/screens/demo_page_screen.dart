import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  File _image;

  final picker = ImagePicker();

  getImageUsingCamera() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.camera,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(
          pickedFile.path,
        );
      });
    }
  }

  getImageUsingGallery() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(
          pickedFile.path,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demo Page",
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              getImageUsingCamera();
            },
            child: Text(
              "Click me to open the camera",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              getImageUsingGallery();
            },
            child: Text(
              "Click me to open the gallery",
            ),
          ),
          _image != null
              ? Image.file(
                  _image,
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
