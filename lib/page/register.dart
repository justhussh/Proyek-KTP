import 'package:flutter/material.dart';
import 'package:proyek_ktp_3e/page/login.dart';

void main() {
  runApp(const RegisterScreen());
}

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool? isChecked = true;
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
                    Text("Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28)),
                    Text("We're thrilled to have you join us!",
                        style: TextStyle(fontSize: 16, color: Colors.black54)),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Form(
                child: Column(
                  children: [
                    //Name
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurple),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            prefixIcon: Icon(Icons.person_outline),
                            labelText: "Name"),
                      ),
                    ),
                    const SizedBox(height: 20),
                    //Phone
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurple),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            prefixIcon: Icon(Icons.phone_outlined),
                            labelText: "Phone"),
                      ),
                    ),
                    const SizedBox(height: 20),
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
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 25,
                          ),
                          labelText: "Password",
                        ),
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
                            const Text("I agree terms & conditions"),
                          ],
                        ),
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
                                  builder: (context) => const LoginScreen()),
                            );
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(fontSize: 16),
                          )),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have account?",
                      style: TextStyle(color: Colors.black54)),
                  SizedBox(
                    height: 40,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: const Text("Sign In")),
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
