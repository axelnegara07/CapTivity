import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController region = TextEditingController();
  TextEditingController favAnimal = TextEditingController();
  TextEditingController bio = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image.asset(
        //   "assets/doodle.png",
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        //   fit: BoxFit.cover,
        // ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xFFFFEFC7),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(166, 48, 0, 3),
                height: 96,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFBB9457),
                child: Row(
                  children: [
                    Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFF1F1F1)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 135,
                        width: 135,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/pp.png"),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Name:",
                      style: TextStyle(fontSize: 16, color: Color(0xFF575757)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 35,
                      child: TextFormField(
                        validator: (value) {},
                        cursorColor: Color(0xFFFFEFC7),
                        style: TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(11, 5, 4, 11),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none)),
                        controller: name,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Phone:",
                      style: TextStyle(fontSize: 16, color: Color(0xFF575757)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 35,
                      child: TextFormField(
                        validator: (value) {},
                        cursorColor: Color(0xFFFFEFC7),
                        style: TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(11, 5, 4, 11),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none)),
                        controller: phone,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Email:",
                      style: TextStyle(fontSize: 16, color: Color(0xFF575757)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 35,
                      child: TextFormField(
                        validator: (value) {},
                        cursorColor: Color(0xFFFFEFC7),
                        style: TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(11, 5, 4, 11),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none)),
                        controller: email,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Region:",
                      style: TextStyle(fontSize: 16, color: Color(0xFF575757)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 35,
                      child: TextFormField(
                        validator: (value) {},
                        cursorColor: Color(0xFFFFEFC7),
                        style: TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(11, 5, 4, 11),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none)),
                        controller: region,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Favorite Animal:",
                      style: TextStyle(fontSize: 16, color: Color(0xFF575757)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 35,
                      child: TextFormField(
                        validator: (value) {},
                        cursorColor: Color(0xFFFFEFC7),
                        style: TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(11, 5, 4, 11),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none)),
                        controller: favAnimal,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Bio:",
                      style: TextStyle(fontSize: 16, color: Color(0xFF575757)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 105,
                      child: TextFormField(
                        validator: (value) {},
                        cursorColor: Color(0xFFFFEFC7),
                        style: TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                            // contentPadding: EdgeInsets.fromLTRB(11, 5, 4, 11),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none)),
                        controller: bio,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
