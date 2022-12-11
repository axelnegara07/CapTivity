import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tubes_uid/home-page.dart';
import 'package:tubes_uid/navbar-page.dart';
import 'package:tubes_uid/register-page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/login-bg.png"),
          fit: BoxFit.cover,
        )),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: 332,
              color: Color(0xFFFFEFC7).withOpacity(0.8),
              child: Column(
                children: [
                  Image.asset('assets/logo.png', height: 260, width: 260),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please input your email!!";
                                  }
                                },
                                cursorColor: Color(0xFFFFEFC7),
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(11, 10, 11, 10),
                                    hintText: "Email address",
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none)),
                                controller: email,
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please input your password!!";
                                  }
                                },
                                obscureText: true,
                                cursorColor: Color(0xFFFFEFC7),
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(11, 10, 11, 10),
                                    hintText: "Password",
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none)),
                                controller: password,
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                child: Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xFFF99582A)),
                                ),
                                onTap: () {},
                              ),
                            ),
                            SizedBox(
                              height: 55,
                            ),
                            Center(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 44, vertical: 10),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF99582A),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ),
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      formKey.currentState!.save();
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  NavbarPage()));
                                    }
                                    print(email.text);
                                    print(password.text);
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Center(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  child: Text(
                                    "Register an account",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFFF99582A)),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterPage()));
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
