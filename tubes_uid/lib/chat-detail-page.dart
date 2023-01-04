import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
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
          appBar: AppBar(
            toolbarHeight: 70,
            titleSpacing: 5,
            title: Row(
              children: [
                Container(
                  height: 53,
                  width: 53,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/chat/catK.png"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cat Keeper",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFF1F1F1)),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Online",
                      style: TextStyle(fontSize: 14, color: Color(0xFFF1F1F1)),
                    ),
                  ],
                )
              ],
            ),
            backgroundColor: Color(0xFFBB9457),
            elevation: 0,
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/doodle.png",
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 14,
                ),
                Center(
                  child: Container(
                    height: 26,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFBB9457),
                    ),
                    child: Center(
                      child: Text(
                        "Today",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/chat/catK.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 212,
                      width: 267,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFBB9457),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 11),
                            child: Text(
                              "Hai, terima kasih sudah mengunjungi penangkaran kami.. \nAnda dapat mengambil hewan peliharaan anda pada lokasi penangkaran kami di Jl. Cibogo No. 19, Bandung. \nJika terdapat kendala, anda dapat berkonsultasi pada kami melalui chat.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 11),
                            child: Text(
                              "16.25",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 55,
                    color: Color(0xFFBB9457),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 13,
                        ),
                        InkWell(
                          child: Container(
                            height: 41,
                            width: 41,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFFEFC7),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Color(0xFF5E4B2C),
                            ),
                          ),
                          onTap: () {
                            //
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: Container(
                            height: 41,
                            width: 41,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFFEFC7),
                            ),
                            child: Icon(
                              Icons.camera_alt,
                              color: Color(0xFF5E4B2C),
                            ),
                          ),
                          onTap: () async {
                            XFile? pickedFile = await ImagePicker().pickImage(
                              source: ImageSource.camera,
                              maxWidth: 1800,
                              maxHeight: 1800,
                            );
                            if (pickedFile != null) {
                              File imageFile = File(pickedFile.path);
                            }
                          },
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 41,
                          width: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFFEFC7),
                          ),
                          child: TextFormField(
                            style: TextStyle(fontSize: 12),
                            cursorColor: Color(0xFF5E4B2C),
                            decoration: InputDecoration(
                                isDense: true,
                                hintText: 'Type here...',
                                hintStyle: TextStyle(color: Color(0xFF5C4E4E)),
                                filled: true,
                                fillColor: Color(0XFFFFEFC7),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        width: 0, style: BorderStyle.none))),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          child: Container(
                            height: 41,
                            width: 41,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFFEFC7),
                            ),
                            child: Icon(
                              Icons.send,
                              color: Color(0xFF5E4B2C),
                            ),
                          ),
                          onTap: () {
                            //
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
