import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/home.dart';
import 'package:proyek_ktp_3e/page/photo.dart';

class Scan extends StatefulWidget {
  const Scan({super.key});

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Home())); // Navigate back to the previous screen
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Step by Step',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.info),
                    onPressed: () {
                    },
                  ),
                ),
              ],
        )),
        body: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                constraints: BoxConstraints(maxWidth: 300),
                child: Text(
                  'Register Yourself Now!',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 250),
                child: Text(
                  'Follow the provided steps and complete the data below!',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Card(
                elevation: 1,
                shadowColor: Colors.blue.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: 330,
                    height: 90,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/identitiy.png',
                          width: 60,
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Step 1',
                                style: TextStyle(
                                    color: Colors.blue.withOpacity(0.8),
                                    fontSize: 12),
                              ),
                              const Text(
                                'Take Photo ID',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/upload.png',
                                width: 18,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 7),
              child: Card(
                elevation: 1,
                shadowColor: Colors.blue.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: 330,
                    height: 90,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/check.png',
                          width: 60,
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Step 2',
                                style: TextStyle(
                                    color: Colors.blue.withOpacity(0.8),
                                    fontSize: 12),
                              ),
                              const Text(
                                'Validation ID',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/upload.png',
                                width: 18,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 7),
              child: Card(
                elevation: 1,
                shadowColor: Colors.blue.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: 330,
                    height: 90,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/identitiy.png',
                          width: 60,
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Step 3',
                                style: TextStyle(
                                    color: Colors.blue.withOpacity(0.8),
                                    fontSize: 12),
                              ),
                              const Text(
                                'Result ID Scan',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/upload.png',
                                width: 18,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Photo()));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                padding:
                    const EdgeInsets.symmetric(horizontal: 139, vertical: 16),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Take Photo!',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
