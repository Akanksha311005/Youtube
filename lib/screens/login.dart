import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/color/appcolor.dart';
import 'package:youtube/controller/login_con.dart';
import 'package:youtube/controller/login_controller.dart';
import 'package:youtube/routes/app_routes.dart';

// var magic = true;
// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
class Login extends StatelessWidget {
  Login({super.key});
  var magic = true;
  final _formkey = GlobalKey<FormState>();
  // bool magic = true;
  final LoginController thiscontroller = Get.put(LoginController());
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final LoginCon loginCon = Get.put(LoginCon());

  void _login() {
    if (_formkey.currentState!.validate()) {
      loginCon.loginUser();
      // Get.toNamed(AppRoutes.Tabs);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 23, 23, 23),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter Your Email",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      style: TextStyle(color: Colors.grey),
                      controller: loginCon.emailCtrl,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Enter Email Address",
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
                    SizedBox(height: 10),
                    Text(
                      "Enter Password",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                      controller: loginCon.passwordCtrl,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            thiscontroller.con();
                          },
                          icon: Icon(
                            thiscontroller.magic.value
                                ? Icons.visibility_off
                                : Icons.remove_red_eye,
                            color: thiscontroller.magic.value
                                ? Colors.blue
                                : Appcolor.primarycolor,
                          ),
                        ),
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return " Enter password";
                        }
                        if (value.length < 6) {
                          return "Password Must be of 6 characters";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.forgotpassword);
                    },
                    child: Text(
                      "Forget Password ?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _login();
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(120, 40),
                          ),
                          child: Text("Login"),
                        ),
                        SizedBox(width: 15),
                        OutlinedButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.createaccount);
                          },
                          child: Text("Sign in"),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text("Or", style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/800px-Google_%22G%22_logo.svg.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 40,
                          width: 40,

                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://cdn.prod.website-files.com/5d66bdc65e51a0d114d15891/64cebdd90aef8ef8c749e848_X-EverythingApp-Logo-Twitter.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWryx19r0yjTs-vYzgN8-moMYY9Kf4lWDqrg&s",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
