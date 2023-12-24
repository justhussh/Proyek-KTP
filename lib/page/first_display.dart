import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyek_ktp_3e/page/launch_screen1.dart';
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

class WelcomePageKTP extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const LaunchScreen1(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: const Color.fromARGB(4, 255, 255, 255),
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 120,
              height: 120,
            ),
          ],
        ),
      )),
    );
  }
}
