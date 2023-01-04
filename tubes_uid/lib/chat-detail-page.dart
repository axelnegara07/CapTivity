import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class ChatDetailPage extends StatefulWidget {
  final String chatPhoto;
  final String name;
  final String chat;
  final String status;
  final String time;
  final String day;
  const ChatDetailPage(
      {super.key,
      required this.chatPhoto,
      required this.name,
      required this.chat,
      required this.status,
      required this.time,
      required this.day});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  image: AssetImage(widget.chatPhoto),
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
                  widget.name,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFF1F1F1)),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  widget.status,
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
                    widget.day,
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
                      image: AssetImage(widget.chatPhoto),
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
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 11),
                        child: Text(
                          widget.chat,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 11),
                        child: Text(
                          widget.time,
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
                            contentPadding: EdgeInsets.all(14),
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
    );
  }
}
