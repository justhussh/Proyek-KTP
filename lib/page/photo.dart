import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:proyek_ktp_3e/page/scan.dart';
import 'package:http/http.dart';

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
              const Text(
                'Upload Photo',
                style: TextStyle(fontSize: 23),
              ),
              IconButton(
                icon: const Icon(Icons.camera_alt_outlined),
                color: Colors.blue,
                onPressed: () {
                  _pickIMage(ImageSource.camera);
                },
              )
            ],
          ),
        ),
        body: Column(children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              constraints: const BoxConstraints(maxWidth: 300),
              child: Text(
                'Point the camera at the card you want to verify, make sure the image is clear',
                style: TextStyle(
                    fontSize: 15, color: Colors.black.withOpacity(0.6)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          _selectedImages != null
              ? Center(
                  child: Container(
                      height: 400,
                      width: 330,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.file(
                          _selectedImages!,
                          fit: BoxFit.cover,
                        ),
                      )),
                )
              : Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/noimage.jpg')),
                ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () async{
              final bb = await get(Uri.parse("http://192.168.69.11:5000"));
              print(bb);
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 139, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Submit',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _pickIMage(ImageSource.gallery);
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              padding:
                  const EdgeInsets.symmetric(horizontal: 113, vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue, width: 2)),
              child: const Text(
                'Upload Photo',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Future _pickIMage(ImageSource source) async {
    final returnedImage = await ImagePicker().pickImage(source: source);
    if (returnedImage == null) return;
    setState(() {
      _selectedImages = File(returnedImage.path);
    });
  }
}
