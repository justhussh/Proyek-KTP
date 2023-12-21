import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/page/photo.dart';
import 'package:proyek_ktp_3e/page/scan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            child: SafeArea(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 23, right: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/killua.jpg',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 2, top: 2),
                                        child: const Text(
                                          'Hello There👋',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12),
                                        ),
                                      ),
                                      const Text(
                                        'Devano Abe',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: const Icon(Icons.notifications_outlined,
                                  size: 35,
                                  color: Color.fromARGB(255, 84, 0, 168)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          width: 325,
                          height: 200,
                          margin: const EdgeInsets.only(top: 18),
                          child: Card(
                            elevation: 7,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                    child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset('assets/bg.png',
                                      fit: BoxFit.cover),
                                )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 40, left: 20),
                                      child: const Text(
                                        'Camps Scanner',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      margin: const EdgeInsets.only(
                                          left: 20, top: 5),
                                      child: const Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Scan Your KTP, KTM, or Other Identity Card.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 90,
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Card(
                          elevation: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Camps Scanner',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 84, 0, 168)),
                                    ),
                                    Text(
                                      'Scan Your Card',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Scan()));
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 19),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 14),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text(
                                    'Sewa',
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
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 220,
                                    height: 300,
                                    child: Card(
                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                              child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.asset(
                                                'assets/Rectangle 48.png',
                                                fit: BoxFit.cover),
                                          )),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 20,
                                                    left: 20,
                                                    right: 20),
                                                child: const Text(
                                                  'Temukan kemudahan dan kenyamanan dalam penyewaan dengan aplikasi',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 18),
                                  Column(
                                    children: [
                                      Container(
                                        width: 130,
                                        height: 138,
                                        child: Card(
                                          child: Stack(
                                            children: [
                                              Positioned.fill(
                                                  child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.asset(
                                                    'assets/Rectangle 48.png',
                                                    fit: BoxFit.cover),
                                              )),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 20,
                                                            left: 28,
                                                            right: 20),
                                                    child: const Text(
                                                      'Riwayat',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 35,
                                                            right: 20),
                                                    child: const Text(
                                                      '8',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 46,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 18),
                                      Container(
                                        width: 130,
                                        height: 138,
                                        child: Card(
                                          child: Stack(
                                            children: [
                                              Positioned.fill(
                                                  child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.asset(
                                                    'assets/Rectangle 48.png',
                                                    fit: BoxFit.cover),
                                              )),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 20,
                                                            left: 35,
                                                            right: 20),
                                                    child: const Text(
                                                      'Mobil',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 35,
                                                            right: 20),
                                                    child: const Text(
                                                      '8',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 46,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 20,
                    top: 138,
                    child: Image.asset(
                      'assets/emoji.png',
                      height: 160,
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
