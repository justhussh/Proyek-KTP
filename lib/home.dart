import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/page/photo.dart';
import 'package:proyek_ktp_3e/page/scan.dart';
import 'package:proyek_ktp_3e/homepage.dart';
import 'package:proyek_ktp_3e/page/sewapage.dart';

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
    SewaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: .0), // Pergeseran ke bawah
        child: Container(
            width: 70.0, // Atur lebar tombol
            height: 70.0, // Atur tinggi tombol
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromRGBO(109, 36, 239, 100), width: 3, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(50),
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(120.0))
              ),
              backgroundColor: Color.fromRGBO(93, 60, 191, 100),
              child: Icon(Icons.add, color: Colors.white, size: 34),
            ),
          ),
      ),

      bottomNavigationBar: 
      NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Color.fromARGB(0, 255, 0, 0),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
          ),
          shadowColor: Colors.black
        ),
        child: NavigationBar(
          onDestinationSelected:  (index) =>
            setState(() => this.index = index),
          height: 92,
          selectedIndex: index,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          
          destinations: [
            Container(
              margin: EdgeInsets.only(bottom: 8),
              child: NavigationDestination(
                  icon: Icon(Icons.home, size: 36),
                  selectedIcon: Icon(Icons.home, size: 36, color: Color.fromRGBO(66, 11, 173, 100)), 
                  label: 'Home',
                ),
            ),
            Container(
              alignment:Alignment.center,
              margin: EdgeInsets.only(top: 30),
              child: Text("Scan", style: TextStyle(fontSize:15,color:const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.w900))
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              child: NavigationDestination(
                  icon: Icon(Icons.inbox, size: 36), 
                  selectedIcon: Icon(Icons.inbox, size: 36, color: Color.fromRGBO(66, 11, 173, 100)), 
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
