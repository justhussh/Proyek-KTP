import 'package:flutter/material.dart';

class OptScreen extends StatefulWidget {
  const OptScreen({super.key});

  @override
  State<OptScreen> createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 56,
            left: 5,
            right: 5,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                    const SizedBox(
                      width: 95,
                    ),
                    const Text(
                      "Get Started",
                      style: TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      width: 95,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.help_outline_rounded)),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Verify phone number",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "An OTP has been sent to your phone number. Please enter it below",
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 52,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
