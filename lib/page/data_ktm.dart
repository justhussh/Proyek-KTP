import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/page/sewapage.dart';

class DataKtm extends StatelessWidget {
  const DataKtm(
      {super.key,
      required this.nim,
      required this.nama,
      required this.ttl,
      required this.prodi,
      required this.alamat1,
      required this.alamat2,
      required this.alamat3});
  final String nim;
  final String nama;
  final String ttl;
  final String prodi;
  final String alamat1;
  final String alamat2;
  final String alamat3;

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
                              child: Icon(
                                Icons.arrow_back,
                                size: 35,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 15, right: 15),
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

                    // Data Diri

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('Data KTM'),
                          ),
                          // NIM

                          const Text(
                            "NIM",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              initialValue: nim,
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
                              initialValue: nama,
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
                              initialValue: ttl,
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
                              initialValue: prodi,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Alamat',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          // Alamat
                          const Text(
                            "Jalan",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              initialValue: alamat1,
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
                          const Text(
                            "Desa",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              initialValue: alamat2,
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
                          const Text(
                            "Kabupaten",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              initialValue: alamat3,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SewaPage(
                                              nim: nim,
                                              nama: nama,
                                              ttl: ttl,
                                              prodi: prodi,
                                              alamat3: alamat3,
                                            )));
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: EdgeInsets.all(15),
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              child: Text('Pilih Mobil'))
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
  
}
