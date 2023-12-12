import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/CarList/daftarmobil.dart';
import 'package:proyek_ktp_3e/page/dataSewa.dart';

class SewaPage extends StatefulWidget {
  const SewaPage({super.key});
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
              SizedBox(
                height: 12,
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'Daftar Mobil',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.all(10),
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
                                    )));
                      },
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 290, maxHeight: 400),
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
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Harga',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.chair,
                                          size: 15,
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                        SizedBox(width: 6),
                                        Text(mobil.seat)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 11),
                                  child: Text(
                                    mobil.harga,
                                    style: TextStyle(fontSize: 20),
                                  )),
                              SizedBox(height: 25),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 11),
                                    child: Text(mobil.merk,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 11),
                                    child: Text(mobil.avail,
                                        style: TextStyle(
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
