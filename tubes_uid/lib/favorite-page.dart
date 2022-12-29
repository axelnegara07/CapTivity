import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
          titleSpacing: 20,
          centerTitle: true,
          title: Text(
            "Favorite",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color(0xFFF1F1F1)),
          ),
          backgroundColor: Color(0xFFBB9457),
          elevation: 0,
        ),
      ),
    ]);
  }
}
