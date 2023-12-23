import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/home.dart';
import 'package:proyek_ktp_3e/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Penyewa extends StatefulWidget {
  @override
  _PenyewaState createState() => _PenyewaState();
}

class _PenyewaState extends State<Penyewa> {
  List<String> penyewaList = [];

  @override
  void initState() {
    super.initState();
    loadDataFromSharedPreferences();
  }

  void loadDataFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      penyewaList = prefs.getStringList('penyewaList') ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  icon: Icon(Icons.keyboard_arrow_left_outlined)),
              const Text('List Penyewa'),
            ],
          ),
          ListView(
            children: penyewaList.map((penyewaData) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: Container(
                    margin: EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      'Deskripsi Penyewa :',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  subtitle: Text(penyewaData),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
