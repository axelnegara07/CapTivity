import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tubes_uid/AdoptionModel.dart';
import 'package:tubes_uid/adoption-item-page.dart';
import 'package:tubes_uid/favorite-page.dart';

class AdoptionPage extends StatefulWidget {
  const AdoptionPage({super.key});

  @override
  State<AdoptionPage> createState() => _AdoptionPageState();
}

class _AdoptionPageState extends State<AdoptionPage> {
  List<AdoptionModel> adoptions = [
    AdoptionModel(
        categoryPhoto: "assets/adoption/category/dog.png", category: "Dog"),
    AdoptionModel(
        categoryPhoto: "assets/adoption/category/cat.png", category: "Cat"),
    AdoptionModel(
        categoryPhoto: "assets/adoption/category/rabbit.png",
        category: "Rabbit"),
    AdoptionModel(
        categoryPhoto: "assets/adoption/category/hamster.png",
        category: "Hamster"),
    AdoptionModel(
        categoryPhoto: "assets/adoption/category/bird.png", category: "Bird"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFEFC7),
      appBar: AppBar(
        toolbarHeight: 70,
        titleSpacing: 20,
        title: Text(
          "Adoption",
          style: TextStyle(
              fontSize: 30,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose Category",
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF575757),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.favorite,
                      color: Color(0xFFFF0000),
                      size: 37,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FavoritePage()));
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(33, 0, 33, 0),
              child: GridView.count(
                shrinkWrap: true,
                childAspectRatio: 0.96,
                crossAxisCount: 2,
                mainAxisSpacing: 22,
                crossAxisSpacing: 30,
                children: List.generate(
                    // '${adoptions[i].categoryPhoto.toString()}'.length
                    5, (i) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdoptionItemPage(
                                    categoryPhoto: adoptions[i].categoryPhoto,
                                    category: adoptions[i].category,
                                  )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFBB9457),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 27,
                          ),
                          Container(
                            height: 81,
                            width: 81,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    '${adoptions[i].categoryPhoto.toString()}'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${adoptions[i].category.toString()}',
                            style: TextStyle(
                                color: Color(0XFFFFFFFF), fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
