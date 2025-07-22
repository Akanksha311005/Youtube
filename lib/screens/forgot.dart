import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/screens/login.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  final _formkey = GlobalKey<FormState>();
  // bool magic = true;
  final TextEditingController emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Icon(Icons.lock_outline, color: Colors.red, size: 64),
              ),
              SizedBox(
                child: Text(
                  "Reset your password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Enter Your email address and we'll send you a",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Center(
                child: Text(
                  "link to reset your password",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextFormField(
                style: TextStyle(color: Colors.grey),
                controller: emailCtrl,
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "email can not be null";
                  }
                  if (!RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  ).hasMatch(value)) {
                    return "Enter valid Email";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Send Reset link",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
                  },
                  child: Text(
                    "Back to Login",
                    style: TextStyle(color: Colors.red),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
