import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/page/photo.dart';
import 'package:proyek_ktp_3e/page/profile.dart';
import 'package:proyek_ktp_3e/page/scan.dart';
import 'package:proyek_ktp_3e/page/sewapage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final screens = [
    HomePage(),
    Scan(),
    SewaPage(),
  ];
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
                                          top: 40, left: 10),
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
                                          left: 10, top: 5),
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
                          shadowColor: Colors.lightBlueAccent.withOpacity(0.8),
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
                                          fontWeight: FontWeight.bold),
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
                                          builder: (context) => Scan()));
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 19),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 14),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text(
                                    'SCAN',
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

        // //nabar
        //   bottomNavigationBar: SalomonBottomBar(
        // currentIndex: _currentIndex,
        // onTap: (i) => _onItemTapped(context, i),
        // items: [
        //   SalomonBottomBarItem(
        //     icon: const Icon(Icons.home),
        //     title: const Text("Home"),
        //     selectedColor: Colors.purple,
        //   ),
        //   SalomonBottomBarItem(
        //     icon: const Icon(Icons.person),
        //     title: const Text("Profile"),
        //     selectedColor: Colors.teal,
        //   ),
        // ],
        //   ),

        //   //floating
        //   floatingActionButton: FloatingActionButton(
        // onPressed: () {
        //   Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => Photo()));
        // },
        //     child: Icon(Icons.add),
        //     backgroundColor: Colors.blue,
        //   ),

        //   floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: Padding(
        //   padding: EdgeInsets.only(top: 8.0), // Pergeseran ke bawah
        //   child: Container(
        //       width: 50.0, // Atur lebar tombol
        //       height: 50.0, // Atur tinggi tombol
        //       decoration: BoxDecoration(
        //         border: Border.all(color: const Color.fromARGB(255, 255, 255, 255), width: 3, style: BorderStyle.solid),
        //         borderRadius: BorderRadius.circular(19),
        //         boxShadow: [
        //           BoxShadow(
        //             color: Color.fromARGB(255, 181, 181, 181).withOpacity(0.5),
        //             spreadRadius: 1,
        //             blurRadius: 3,
        //             offset: Offset(0, 2.5), // posisi bayangan
        //           ),
        //         ],
        //       ),
        //       child: FloatingActionButton(
        //         onPressed: () {
        //           Navigator.push(
        //               context, MaterialPageRoute(builder: (context) => Photo()));
        //         },
        //         backgroundColor: Colors.red,
        //         child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 34),
        //       ),
        //     ),
        // ),

        // bottomNavigationBar: NavigationBarTheme(
        //   data: NavigationBarThemeData(
        //     indicatorColor: Color.fromARGB(0, 255, 0, 0),
        //     labelTextStyle: MaterialStateProperty.all(
        //       TextStyle(fontSize: 11.5, fontWeight: FontWeight.w500, height: -0.04),
        //     ),
        //     shadowColor: Colors.black
        //   ),
        //   child: NavigationBar(
        //     // currentIndex: _currentIndex,
        //     // onTap: (i) => _onItemTapped(context, i),
        //     // items: [

        //     //   SalomonBottomBarItem(
        //     //     icon: const Icon(Icons.home),
        //     //     title: const Text("Home"),
        //     //     selectedColor: Colors.purple,
        //     //   ),
        //     //   SalomonBottomBarItem(
        //     //     icon: const Icon(Icons.person),
        //     //     title: const Text("Profile"),
        //     //     selectedColor: Colors.teal,
        //     //   ),
        //     // ],

        //     onDestinationSelected:  (index) =>
        //       setState(() => this.index = index),
        //     height: 72,
        //     selectedIndex: index,
        //     backgroundColor: Color.fromARGB(255, 255, 255, 255),
        //     destinations: [
        //       Container(
        //         margin: EdgeInsets.only(bottom: 20),
        //         child: NavigationDestination(
        //             icon: Icon(Icons.home, size: 32),
        //             selectedIcon: Icon(Icons.home, size: 32, color: Colors.red,),
        //             label: 'Home',
        //           ),
        //       ),
        //       Container(
        //         alignment:Alignment.center,
        //         margin: EdgeInsets.only(top: 14),
        //         child: Text("Scan", style: TextStyle(fontSize:11.5,color:const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.w500))
        //       ),
        //       Container(
        //         margin: EdgeInsets.only(bottom: 20),
        //         child: NavigationDestination(
        //             icon: Icon(Icons.inbox, size: 32),
        //             label: 'Riwayat',
        //           ),
        //       ),
        //     ],
        //   ),
        // ),
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
