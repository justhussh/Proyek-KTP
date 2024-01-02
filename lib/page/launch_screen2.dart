import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:proyek_ktp_3e/page/login.dart';
// import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const LaunchScreen2());
}

class LaunchScreen2 extends StatelessWidget {
  const LaunchScreen2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Color myColor = Color.fromRGBO(233, 238, 245, 0);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LaunchScreen2Page(title: 'Welcome'),
    );
  }
}

class LaunchScreen2Page extends StatefulWidget {
  const LaunchScreen2Page({super.key, required this.title});

  final String title;

  @override
  State<LaunchScreen2Page> createState() => LaunchScreen2Ktp();
}

class LaunchScreen2Ktp extends State<LaunchScreen2Page> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 6.0),
      height: 8,
      width: isActive ? 24 : 7,
      decoration: BoxDecoration(
          color: isActive ? Colors.black : const Color(0xffd8dce7),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: const Text('Skip',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )),
                  ),
                ),
              ),
              //page slicing 1
              Container(
                height: 600,
                child: PageView(
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 60),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'GoRent Data User',
                            style: TextStyle(
                              fontSize: 32,
                              height: 1.0851875,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.96,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Data diri anda akan tersedia di aplikasi ini\nsetelah anda scan ktm anda',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.0851875,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.6,
                              color: Color(0xff3f5456),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Image.asset(
                          'assets/card 5.png',
                          alignment: const Alignment(-1, -1),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 60),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'GoRent Ranking User',
                            style: TextStyle(
                              fontSize: 32,
                              height: 1.0851875,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.96,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Penasaran sama ranking kamu di kelas?\nlangsung saja scan ktm mu di sini!',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.0851875,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.6,
                              color: Color(0xff3f5456),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 58),
                        Image.asset(
                          'assets/Card 7.png',
                          alignment: const Alignment(-1, -1),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 60),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Gorent Daftar User',
                            style: TextStyle(
                              fontSize: 32,
                              height: 1.0851875,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.96,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Daftarkan diri anda di aplikasi ini\n untuk mendapatkan berbagai manfaat',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.0851875,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.6,
                              color: Color(0xff3f5456),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 68),
                        Image.asset(
                          'assets/Card 8.png',
                          alignment: const Alignment(-1, -1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              _currentPage != _numPages - 1
                  ? Expanded(
                      child: Center(
                          child: FloatingActionButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(microseconds: 500),
                            curve: Curves.ease);
                      },
                      backgroundColor: Colors
                          .black, // Mengatur latar belakang tombol menjadi hitam
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20)), // Mengatur bentuk tombol menjadi bulat dengan radius 20
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_forward,
                            color: Colors
                                .white, // Mengatur warna ikon menjadi putih
                            size: 30,
                          )
                        ],
                      ),
                    )))
                  : const Text(''),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 140,
              width: double.infinity,
              color: const Color.fromRGBO(255, 251, 254, 1),
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors
                            .black, // Mengatur latar belakang tombol menjadi hitam
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              12), // Mengatur radius border menjadi 12
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 150), // Mengatur padding horizontal
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10), // Mengatur padding vertikal
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
              ),
            )
          : const Text(''),
    );
  }
}
