import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:proyek_ktp_3e/page/homepage.dart';
import 'package:proyek_ktp_3e/page/scan.dart';

class Photo extends StatefulWidget {
  const Photo({super.key});

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  File? _selectedImages;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Scan()));
                },
                child: const Text(
                  'Close',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
              Text(
                'Upload Photo',
                style: TextStyle(fontSize: 23),
              ),
              IconButton(
                icon: Icon(Icons.camera_alt_outlined),
                color: Colors.blue,
                onPressed: () {
                  _pickImageFromGallery();
                },
              )
            ],
          ),
        ),
        body: Column(children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 15),
              constraints: BoxConstraints(maxWidth: 300),
              child: Text(
                'Point the camera at the card you want to verify, make sure the image is clear',
                style: TextStyle(
                    fontSize: 15, color: Colors.black.withOpacity(0.6)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _selectedImages != null
              ? Image.file(_selectedImages!)
              : Text("Pick Image")
        ]),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) return;
    setState(() {
      _selectedImages = File(returnedImage.path);
    });
  }
}
