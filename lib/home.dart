import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/page/listsewa.dart';
import 'package:proyek_ktp_3e/page/scan.dart';
import 'package:proyek_ktp_3e/homepage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int index = 0;
  final screens = [const HomePage(), const Scan(), Penyewa()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: .0), // Pergeseran ke bawah
          child: Container(
            width: 70.0, // Atur lebar tombol
            height: 70.0, // Atur tinggi tombol
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(109, 36, 239, 100),
                  width: 3,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 181, 181, 181).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2.5), // posisi bayangan
                ),
              ],
            ),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Scan()));
              },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(120.0))),
              backgroundColor: const Color.fromRGBO(93, 60, 191, 100),
              child: const Icon(Icons.add, color: Colors.white, size: 34),
            ),
          ),
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: const Color.fromARGB(0, 255, 0, 0),
              labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
              ),
              shadowColor: Colors.black),
          child: NavigationBar(
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            height: 92,
            selectedIndex: index,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            destinations: [
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: const NavigationDestination(
                  icon: Icon(Icons.home, size: 36),
                  selectedIcon: Icon(Icons.home,
                      size: 36, color: Color.fromRGBO(66, 11, 173, 100)),
                  label: 'Home',
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 30),
                  child: const Text("Scan",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w900))),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: const NavigationDestination(
                  icon: Icon(Icons.inbox, size: 36),
                  selectedIcon: Icon(Icons.inbox,
                      size: 36, color: Color.fromRGBO(66, 11, 173, 100)),
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
}
