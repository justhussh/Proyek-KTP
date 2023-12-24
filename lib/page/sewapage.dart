import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/Model/daftarmobil.dart';
import 'package:proyek_ktp_3e/home.dart';

import 'package:proyek_ktp_3e/page/datasewa.dart';

class SewaPage extends StatefulWidget {
  const SewaPage(
      {super.key,
      required this.nim,
      required this.nama,
      required this.ttl,
      required this.prodi,
      required this.alamat3});
  final String nim;
  final String nama;
  final String ttl;
  final String prodi;
  final String alamat3;
  @override
  State<SewaPage> createState() => _SewaPageState();
}

class _SewaPageState extends State<SewaPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 30),
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 23, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
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
                          margin: const EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(bottom: 2, top: 2),
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
                                    fontSize: 19, fontWeight: FontWeight.bold),
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
              const SizedBox(
                height: 12,
              ),
              Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: const Text(
                    'Daftar Mobil',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: const EdgeInsets.all(10),
                width: 400,
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: daftarMobilList.length,
                  itemBuilder: (context, index) {
                    DaftarMobil mobil = daftarMobilList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DataSewa(
                                      mobil: mobil,
                                      nim: widget.nim,
                                      nama: widget.nama,
                                      ttl: widget.ttl,
                                      prodi: widget.prodi,
                                      alamat3: widget.alamat3,
                                    )));
                      },
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: 290, maxHeight: 400),
                        child: Card(
                          margin: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: Image.asset(
                                  mobil.imageAsset,
                                  width: 250,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 11),
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Harga',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.chair,
                                          size: 15,
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                        const SizedBox(width: 6),
                                        Text(mobil.seat)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  margin: const EdgeInsets.only(left: 11),
                                  child: Text(
                                    mobil.harga,
                                    style: const TextStyle(fontSize: 20),
                                  )),
                              const SizedBox(height: 25),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 11),
                                    child: Text(mobil.merk,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 11),
                                    child: Text(mobil.avail,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
