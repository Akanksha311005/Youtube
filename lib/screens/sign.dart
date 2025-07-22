import 'package:flutter/material.dart';
import 'package:youtube/screens/homepage.dart';
import 'package:youtube/screens/login.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();
  final TextEditingController userCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Text(
                "Sign up for Youtube",
                style: TextStyle(
                  color: const Color.fromARGB(255, 252, 252, 252),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 25),
              TextFormField(
                style: TextStyle(color: Colors.grey),
                controller: userCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.person),
                  hintText: "Username",
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
              TextFormField(
                style: TextStyle(color: Colors.grey),
                controller: emailCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.mail),
                  hintText: "Email",
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
              TextFormField(
                style: TextStyle(color: Colors.grey),
                controller: passCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  "Back to Login",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
