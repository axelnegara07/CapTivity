import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tubes_uid/favorite-page.dart';

class AdoptionPage extends StatefulWidget {
  const AdoptionPage({super.key});

  @override
  State<AdoptionPage> createState() => _AdoptionPageState();
}

class _AdoptionPageState extends State<AdoptionPage> {
  List<String> adoptionPhotos = [
    "assets/adoption/category/dog.png",
    "assets/adoption/category/cat.png",
    "assets/adoption/category/rabbit.png",
    "assets/adoption/category/hamster.png",
    "assets/adoption/category/bird.png"
  ];

  List<String> adoptionTittle = ["Dog", "Cat", "Rabbit", "Hamster", "Bird"];

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
          body: Column(
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
                  children: List.generate(adoptionTittle.length, (i) {
                    return InkWell(
                      onTap: () {
                        //berbeda dengan genre, language hanya bisa terpilih 1
                        //konsep : ubah semua isSelected languages jadi false dan isi language yang terpilih jadi true
                        // for(var j = 0; j < languages.length; j++){
                        // languages[j].isSelected = false;
                        // }
                        // languages[i].isSelected = true; //ini diassign true dan tidak ada ! karena dicontoh flutix jika yg udah keselect dipencet maka tidak akan hilang
                        // setState(() {});
                      },
                      child: Container(
                        // padding: EdgeInsets.fromLTRB(42, 27, 42, 21),
                        decoration: BoxDecoration(
                          // image: DecorationImage(
                          //     image: AssetImage(adoptionPhotos[i])),
                          color: Color(0xFFBB9457),
                          // color: languages[i].isSelected ? Color(0XFFFBD45F) : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          // border: Border.all(color: languages[i].isSelected ? Color(0XFFFBD45F) :  Color(0XFFE7E7E7)),
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
                                  image: AssetImage(adoptionPhotos[i]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              adoptionTittle[i],
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
      ],
    );
  }
}
