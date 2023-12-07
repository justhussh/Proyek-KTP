import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/page/profile.dart';
import 'package:proyek_ktp_3e/page/scan.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        margin: const EdgeInsets.only(left: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    'https://www.greenscene.co.id/wp-content/uploads/2021/09/Sukuna.jpg',
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
                      Container(
                        width: 345,
                        height: 200,
                        margin: const EdgeInsets.only(top: 18),
                        child: Card(
                          elevation: 7,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                    'https://wallpaperaccess.com/full/1489205.jpg',
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
                                    margin:
                                        const EdgeInsets.only(left: 10, top: 5),
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
                      Container(
                        height: 90,
                        margin:
                            const EdgeInsets.only(left: 10, right: 10, top: 25),
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
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Riwayat Vaildasi',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text('See All',
                                  style: TextStyle(
                                      fontSize: 13,
                                      decoration: TextDecoration.underline)),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      ListTile(
                        title: Text('35542442'),
                        subtitle: Text('Devano Abew'),
                        leading: Icon(
                          Icons.person,
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Colors.blueGrey.withOpacity(0.2))
                              ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 1),
                                child: Text(
                                  'Valid',
                                  style: TextStyle(
                                      color: Colors.lightGreen,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              '13/12/2023',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      ListTile(
                        title: Text('35542442'),
                        subtitle: Text('Devano Abew'),
                        leading: Icon(
                          Icons.person,
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Colors.blueGrey.withOpacity(0.2))
                              ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 1),
                                child: Text(
                                  'Valid',
                                  style: TextStyle(
                                      color: Colors.lightGreen,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              '13/12/2023',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      ListTile(
                        title: Text('35542442'),
                        subtitle: Text('Devano Abew'),
                        leading: Icon(
                          Icons.person,
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Colors.blueGrey.withOpacity(0.2))
                              ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 1),
                                child: Text(
                                  'Valid',
                                  style: TextStyle(
                                      color: Colors.lightGreen,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              '13/12/2023',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            )
                          ],
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
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => _onItemTapped(context, i),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
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
