import 'dart:core';
import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/CarList/daftarmobil.dart';
import 'package:proyek_ktp_3e/page/listsewa.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataSewa extends StatefulWidget {
  const DataSewa(
      {super.key,
      required this.mobil,
      required this.nim,
      required this.nama,
      required this.ttl,
      required this.prodi,
      required this.alamat3});
  final DaftarMobil mobil;
  final String nim;
  final String nama;
  final String ttl;
  final String prodi;
  final String alamat3;

  @override
  State<DataSewa> createState() => _DataSewaState();
}

class _DataSewaState extends State<DataSewa> {
  int index = 0;
  final TextEditingController _mobilController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();
  final TextEditingController _statusController = TextEditingController();
  final TextEditingController _seatController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Set initial values for controllers
    _mobilController.text = widget.mobil.merk;
    _hargaController.text = widget.mobil.harga;
    _statusController.text = widget.mobil.avail;
    _seatController.text = widget.mobil.seat;
  }

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
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.arrow_back,
                                  size: 35,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
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
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/killua.jpg',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: SizedBox(
                          height: 1,
                          child: DecoratedBox(
                              decoration: BoxDecoration(color: Colors.black)),
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
                              "Data Penyewa",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15,
                            ),

                            // Mobil
                            const Text(
                              "Mobil",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            SizedBox(
                              height: 40,
                              child: TextFormField(
                                controller: _mobilController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),

                            // Harga
                            const Text(
                              "Harga",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            SizedBox(
                              height: 40,
                              child: TextFormField(
                                controller: _hargaController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),

                            // Status
                            const Text(
                              "Status",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            SizedBox(
                              height: 40,
                              child: TextFormField(
                                controller: _statusController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),

                            // Seat
                            const Text(
                              "Seat",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            SizedBox(
                              height: 40,
                              child: TextFormField(
                                controller: _seatController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 15,
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
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            SizedBox(
                              height: 40,
                              child: TextFormField(
                                initialValue: widget.nim,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),

                            // Nama
                            const Text(
                              "Nama",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            SizedBox(
                              height: 40,
                              child: TextFormField(
                                initialValue: widget.nama,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),

                            // TTL
                            const Text(
                              "Tempat, Tanggal Lahir",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            SizedBox(
                              height: 40,
                              child: TextFormField(
                                initialValue: widget.ttl,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),

                            // Jurusan
                            const Text(
                              "Jurusan",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            SizedBox(
                              height: 40,
                              child: TextFormField(
                                initialValue: widget.prodi,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),

                            // Alamat
                            const Text(
                              "Alamat",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            SizedBox(
                              height: 40,
                              child: TextFormField(
                                initialValue: widget.alamat3,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
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
          floatingActionButton: Theme(
            data: ThemeData(
                floatingActionButtonTheme:
                    const FloatingActionButtonThemeData()),
            child: SizedBox(
              width: 100,
              child: FloatingActionButton(
                onPressed: () {
                  saveData();
                  Future.delayed(Duration(milliseconds: 300), () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Penyewa()));
                  });
                },
                backgroundColor: Colors.blue,
                heroTag: null,
                mini: false,
                child: Text(
                  'SEWA',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          )),
    );
  }

  void saveData() async {
    String data =
        'Mobil: ${widget.mobil.merk}, NIM: ${widget.nim}, Nama: ${widget.nama}';

    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> penyewaList = prefs.getStringList('penyewaList') ?? [];
    penyewaList.add(data);
    prefs.setStringList('penyewaList', penyewaList);
  }
}
