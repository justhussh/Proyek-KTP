import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/page/photo.dart';
import 'package:proyek_ktp_3e/page/profile.dart';

class DataSewa extends StatefulWidget {
  const DataSewa({super.key});

  @override
  State<DataSewa> createState() => _DataSewaState();
}

class _DataSewaState extends State<DataSewa> {
  int index = 0;

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            child: SafeArea(
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Header
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            margin: const EdgeInsets.only(right: 15),
                            child: const Icon(
                              Icons.notifications_outlined,
                              size: 35,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 1,
                        child: DecoratedBox(
                            decoration:
                                const BoxDecoration(color: Colors.black)),
                      ),
                    ),

                    // Data Mobil
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Lengkapi Data",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          // Mobil
                          const Text(
                            "Mobil",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),

                          // Harga
                          const Text(
                            "Harga",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),

                          // Status
                          const Text(
                            "Status",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),

                          // Seat
                          const Text(
                            "Seat",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 105,
                            child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Photo()),
                                  );
                                },
                                icon: Icon(Icons.qr_code_scanner_rounded),
                                label: const Text(
                                  "Scan",
                                  style: TextStyle(fontSize: 13),
                                )),
                          ),
                        ],
                      ),
                    ),

                    // Data Diri
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // NIM
                          const Text(
                            "NIM",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),

                          // Nama
                          const Text(
                            "Nama",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),

                          // TTL
                          const Text(
                            "Tempat, Tanggal Lahir",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),

                          // Jurusan
                          const Text(
                            "Jurusan",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),

                          // Alamat
                          const Text(
                            "Alamat",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const DataSewa();
      case 1:
        return const Profile();
      default:
        return const DataSewa();
    }
  }

  void _onItemTapped(BuildContext context, int index) {
    setState(() {
      _currentIndex = index;
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => _getPage(index),
        ),
      );
    });
  }
}
