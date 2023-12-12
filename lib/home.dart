import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/page/photo.dart';
import 'package:proyek_ktp_3e/page/profile.dart';
import 'package:proyek_ktp_3e/page/scan.dart';
import 'package:proyek_ktp_3e/homepage.dart';
import 'package:proyek_ktp_3e/page/dataSewa.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int index = 0;
  final screens = [
    HomePage(),
    Scan(),
    DataSewa(),
  ];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(top: 8.0), // Pergeseran ke bawah
          child: Container(
            width: 50.0, // Atur lebar tombol
            height: 50.0, // Atur tinggi tombol
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 3,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(19),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 181, 181, 181).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 2.5), // posisi bayangan
                ),
              ],
            ),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Photo()));
              },
              backgroundColor: Colors.red,
              child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 34),
            ),
          ),
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: Color.fromARGB(0, 255, 0, 0),
              labelTextStyle: MaterialStateProperty.all(
                TextStyle(
                    fontSize: 11.5, fontWeight: FontWeight.w500, height: -0.04),
              ),
              shadowColor: Colors.black),
          child: NavigationBar(
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            height: 72,
            selectedIndex: index,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            destinations: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: NavigationDestination(
                  icon: Icon(Icons.home, size: 32),
                  selectedIcon: Icon(
                    Icons.home,
                    size: 32,
                    color: Color.fromRGBO(105, 94, 182, 30),
                  ),
                  label: 'Home',
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 14),
                  child: Text("Scan",
                      style: TextStyle(
                          fontSize: 11.5,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500))),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: NavigationDestination(
                  icon: Icon(Icons.person_2_outlined, size: 32),
                  selectedIcon: Icon(
                    Icons.person_2_outlined,
                    size: 32,
                    color: Color.fromRGBO(105, 94, 182, 30),
                  ),
                  label: 'Sewa',
                ),
              ),
            ],
          ),
        ),
        body: screens[index],
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const Profile();
      default:
        return const HomePage();
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
