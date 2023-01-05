import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tubes_uid/navbar-page.dart';

class DonationFinishPage extends StatefulWidget {
  const DonationFinishPage({super.key});

  @override
  State<DonationFinishPage> createState() => _DonationFinishPageState();
}

class _DonationFinishPageState extends State<DonationFinishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFFFEFC7),
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          title: Text(
            "Thank You",
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Color(0xFFF1F1F1)),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFFBB9457),
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/doodle.png",
                  ),
                  fit: BoxFit.cover)),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NavbarPage()));
            },
            child: Center(
              child: Container(
                height: 460,
                width: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFBB9457)),
                child: Column(
                  children: [
                    Image.asset('assets/logo.png', height: 260, width: 260),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Thank You For",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFFF1F1F1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Donating :)",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFFF1F1F1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
