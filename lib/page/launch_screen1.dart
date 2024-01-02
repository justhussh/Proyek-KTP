import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyek_ktp_3e/page/launch_screen2.dart';
// import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const LaunchScreen1());
}

class LaunchScreen1 extends StatelessWidget {
  const LaunchScreen1({super.key});

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
      home: const LaunchScreen1Page(title: 'Welcome'),
    );
  }
}

class LaunchScreen1Page extends StatefulWidget {
  const LaunchScreen1Page({super.key, required this.title});

  final String title;

  @override
  State<LaunchScreen1Page> createState() => LaunchScreen1Ktp();
}

class LaunchScreen1Ktp extends State<LaunchScreen1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/Card 6.png',
                alignment: const Alignment(-1, -1),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/Card 3.png',
                ),
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(left: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/Card 4.png',
                        ),
                        Image.asset(
                          'assets/Card 4 (1).png',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Text('GoRent!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 48,
                  height: 1.0851875,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1.12,
                  color: Color(0xff000000),
                )),
            Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Image.asset(
                    'assets/Card 2.png',
                  ),
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(left: 50),
                      child: Image.asset(
                        'assets/Card.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LaunchScreen2()),
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                color: Colors.black,
                iconSize: 32,
                padding: const EdgeInsets.all(12),
                constraints: const BoxConstraints.tightFor(
                  width: 56,
                  height: 56,
                ),
                splashRadius: 24,
                tooltip: 'Back',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
