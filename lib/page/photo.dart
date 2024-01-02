// ignore_for_file: avoid_print

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:proyek_ktp_3e/loading.dart';
import 'package:proyek_ktp_3e/page/data_ktm.dart';
import 'package:proyek_ktp_3e/page/scan.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 7),
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
                            horizontal: 15, vertical: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.file(
                            _selectedImages!,
                            fit: BoxFit.cover,
                          ),
                        )),
                  )
                : Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/noimage.jpg')),
                  ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () async {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return const Loading();
                  },
                );

                final url = Uri.parse('http://192.168.73.253:5000/read');
                var request = http.MultipartRequest('POST', url);

                http.MultipartFile multipartFile =
                    await http.MultipartFile.fromPath(
                        'image_file', _selectedImages!.path);
                request.files.add(multipartFile);

                try {
                  // Send the request and get the response stream
                  final responseStream = await request.send();

                  // Convert the response stream to an http.Response object
                  final response =
                      await http.Response.fromStream(responseStream);
  
                  print('Response status code: ${response.statusCode}');
                  print('Response body: ${response.body}');

                  // Check if the request was successful (HTTP 2xx)
                  if (response.statusCode >= 200 && response.statusCode < 300) {
                    // Parse the JSON response body
                    Map<String, dynamic> responseBody =
                        json.decode(response.body);

                    // Extract values from the JSON response
                    String nimValue = responseBody['nim'] ?? '';
                    String namaValue = responseBody['nama'] ?? '';
                    String ttlValue = responseBody['ttl'] ?? '';
                    String prodiValue = responseBody['prodi'] ?? '';
                    String alamat1Value = responseBody['alamat1'] ?? '';
                    String alamat2Value = responseBody['alamat2'] ?? '';
                    String alamat3Value = responseBody['alamat3'] ?? '';

                    // Hide the loading dialog
                    Navigator.pop(context);
                    

                    // Navigate to the next page (optional)
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DataKtm(
                            nim: nimValue,
                            nama: namaValue,
                            ttl: ttlValue,
                            prodi: prodiValue,
                            alamat1: alamat1Value,
                            alamat2: alamat2Value,
                            alamat3: alamat3Value),
                      ),
                    );
                  } else {
                    // Handle the error
                    // You might want to show an error message or take other actions here
                    // Hide the loading dialog
                    Navigator.pop(context);
                  }
                } catch (error) {
                  print('Error: $error');

                  // Hide the loading dialog
                  Navigator.pop(context);

                  // Handle the error
                  // You might want to show an error message or take other actions here
                }
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 139, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
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
      ),
    );
  }

  Future _pickIMage(ImageSource source) async {
    final returnedImage =
        await ImagePicker().pickImage(source: source, imageQuality: 100);
    if (returnedImage == null) return;
    setState(() {
      _selectedImages = File(returnedImage.path);
    });
  }
}
