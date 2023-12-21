import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/home.dart';
import 'package:proyek_ktp_3e/page/register.dart';


void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isChecked = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 56,
            left: 24,
            bottom: 24,
            right: 24,
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                        height: 85,
                        width: 85,
                        image: AssetImage('assets/logo.png')),
                    Text("Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28)),
                    Text("We're happy to see you back again!",
                        style: TextStyle(fontSize: 16, color: Colors.black54)),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              Form(
                child: Column(
                  children: [
                    //Email
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurple),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            prefixIcon: Icon(Icons.mail_outline),
                            labelText: "E-mail"),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Password
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurple),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 25,
                            ),
                            labelText: "Password"),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Remember Me & Forgot Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Remember Me
                        Row(
                          children: [
                            Checkbox(
                              tristate: true,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value;
                                });
                              },
                            ),
                            const Text("Remember Me"),
                          ],
                        ),
                        // Forgot Passowrd
                        TextButton(
                            onPressed: () {},
                            child: const Text("Forgot Password")),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // Sign In Button
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 16),
                          )),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),

              // Divider
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    width: 110,
                    height: 10,
                    image: AssetImage("assets/Vector 5.png"),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Or login with",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(width: 20),
                  Image(
                    width: 110,
                    height: 10,
                    image: AssetImage("assets/Vector 6.png"),
                  )
                ],
              ),
              const SizedBox(height: 20),
              // Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/google.png',
                          width: 24,
                          height: 24,
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: const Text(
                            'Google',
                            style: TextStyle(color: Colors.black87),
                          ),
                        )),
                  ),
                  // const SizedBox(width: 16),
                  Container(
                    child: ElevatedButton.icon(
                        onPressed: () {
                          // final response = await get(Uri.parse("http://192.168.69.11:5000"));
                          // print(response);
                        },
                        icon: Image.asset(
                          'assets/facebook.png',
                          width: 24,
                          height: 24,
                        ),
                        label: Padding(
                          padding: const EdgeInsets.only(left: 18, right: 18),
                          child: const Text(
                            'Facebook',
                            style: TextStyle(color: Colors.black87),
                          ),
                        )
                    ),
                  ),

                ],
              ),
              const SizedBox(
                height: 140,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have account?",
                      style: TextStyle(color: Colors.black54)),
                  SizedBox(
                    height: 40,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()),
                          );
                        },
                        child: const Text("Sign Up")),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
