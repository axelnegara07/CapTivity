import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tubes_uid/adoption-finish-page.dart';

class AdoptionDetailPage extends StatefulWidget {
  const AdoptionDetailPage({super.key});

  @override
  State<AdoptionDetailPage> createState() => _AdoptionDetailPageState();
}

class _AdoptionDetailPageState extends State<AdoptionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFEFC7),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AdoptionFinishPage()));
            },
            child: Container(
              height: 310,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/adoption/nathan.png",
                ),
                fit: BoxFit.fill,
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 265,
                  ),
                  Container(
                    height: 600,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFEFC7),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/doodle.png",
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero,
                      ),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 28,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Text(
                                  "Nathan",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF1E1616)),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xFF99582A),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    "Beagle",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFFFFFFFF)),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(192, 0, 20, 0),
                                child: Center(
                                    child: Icon(
                                  Icons.favorite,
                                  color: Color(0xFFFF0000),
                                  size: 30,
                                )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 144,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(color: Color(0xFF575757)),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.pets,
                                      color: Color(0xFF807454),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Center(
                                      child: Text(
                                        "1 tahun 8 bulan",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF1E1616)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 140,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(color: Color(0xFF575757)),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.color_lens,
                                      color: Color(0xFF807454),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Center(
                                      child: Text(
                                        "Lemon & White",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF1E1616)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.female,
                                      color: Color(0xFF807454),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Center(
                                      child: Text(
                                        "Female",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF1E1616)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 26,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "More Information",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF1E1616),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              "Nathan adalah anjing yang sangat aktif dia sangat suka bermain dengan mainan favorit nya yaitu bola squishy. Kami menemukan Nathan ketika dia sedang kelaparan dan hampir Meninggal karena pemilik lamanya. Semoga pemilik barunya bisa memberikan nya kasih sayang yang pantas.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF1E1616),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 200,
                          ),
                          Center(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF99582A),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "Adopt Me",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AdoptionFinishPage()));
                                },
                              ),
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
