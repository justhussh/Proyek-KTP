import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const Welcome());
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Color myColor = Color.fromRGBO(233, 238, 245, 0);
    return MaterialApp(
      
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 0, 0)),
        useMaterial3: true,
      ),
      home: const WelcomePage(title: 'Welcome'),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key, required this.title});

  final String title;

  @override
  State<WelcomePage> createState() => WelcomePageKTP();
}

class WelcomePageKTP extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {

      return Scaffold(
      
        body: 
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  'assets/logo.png',
                  width: 300,
                  height: 300,
                ),
              ),
            ],
          ),
        )
  
    );
  }
}