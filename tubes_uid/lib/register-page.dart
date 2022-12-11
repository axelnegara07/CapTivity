import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'login-page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController password2 = TextEditingController();
  TextEditingController region = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/login-bg.png"),
            fit: BoxFit.cover,
          )),
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
                height: MediaQuery.of(context).size.height * 0.75,
                width: 334,
                color: Color(0xFFFFEFC7).withOpacity(0.8),
                child: Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 35,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: TextFormField(
                                validator: (value) {},
                                cursorColor: Color(0xFFFFEFC7),
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(11, 10, 11, 10),
                                    hintText: "Name",
                                    hintStyle: TextStyle(
                                        color:
                                            Color(0xFF000000).withOpacity(0.3)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none)),
                                controller: name,
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: TextFormField(
                                validator: (value) {},
                                cursorColor: Color(0xFFFFEFC7),
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(11, 10, 11, 10),
                                    hintText: "Phone number",
                                    hintStyle: TextStyle(
                                        color:
                                            Color(0xFF000000).withOpacity(0.3)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none)),
                                controller: phone,
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: TextFormField(
                                validator: (value) {},
                                cursorColor: Color(0xFFFFEFC7),
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(11, 10, 11, 10),
                                    hintText: "Email address",
                                    hintStyle: TextStyle(
                                        color:
                                            Color(0xFF000000).withOpacity(0.3)),
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
                                validator: (value) {},
                                obscureText: true,
                                cursorColor: Color(0xFFFFEFC7),
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(11, 10, 11, 10),
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                        color:
                                            Color(0xFF000000).withOpacity(0.3)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none)),
                                controller: password,
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: TextFormField(
                                validator: (value) {},
                                obscureText: true,
                                cursorColor: Color(0xFFFFEFC7),
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(11, 10, 11, 10),
                                    hintText: "Confirm password",
                                    hintStyle: TextStyle(
                                        color:
                                            Color(0xFF000000).withOpacity(0.3)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none)),
                                controller: password2,
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: TextFormField(
                                validator: (value) {},
                                cursorColor: Color(0xFFFFEFC7),
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(11, 10, 11, 10),
                                    hintText: "Region",
                                    hintStyle: TextStyle(
                                        color:
                                            Color(0xFF000000).withOpacity(0.3)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none)),
                                controller: region,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  child: Checkbox(
                                    value: isChecked,
                                    // checkColor: Color(0xFFF99582A),
                                    activeColor: Color(0xFFF99582A),
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  "I want to recieve news and information",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 44, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF99582A),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                  print(name.text);
                                  print(phone.text);
                                  print(email.text);
                                  print(password.text);
                                  print(password2.text);
                                  print(region.text);
                                },
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "Already have account?",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    child: Text(
                                      "Sign in",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFFF99582A)),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginPage()));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
