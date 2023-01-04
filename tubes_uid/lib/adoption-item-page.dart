import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tubes_uid/favorite-page.dart';

class AdoptionItemPage extends StatefulWidget {
  final String categoryPhoto;
  final String category;
  const AdoptionItemPage(
      {super.key, required this.categoryPhoto, required this.category});

  @override
  State<AdoptionItemPage> createState() => _AdoptionItemPageState();
}

class _AdoptionItemPageState extends State<AdoptionItemPage> {
  TextEditingController search = TextEditingController();
  List<String> adoptionPhotos = [
    "assets/information/golden.png",
    "assets/information/belgian.png",
    "assets/information/chihuahua.png",
  ];

  List<String> adoptionName = [
    "Nathan",
    "Vivi",
    "Poki",
  ];

  List<String> adoptionBreed = [
    "Beagle",
    "Siberian Husky",
    "Pomerian",
  ];

  List<bool> isSelected = [
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFEFC7),
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text(
          "Adoption",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Color(0xFFF1F1F1)),
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
                    widget.category,
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
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 138,
                    child: TextFormField(
                      controller: search,
                      cursorColor: Color(0xFF5C4E4E),
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(3),
                          isDense: true,
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                              color: Color(0xFF5C4E4E).withOpacity(0.45)),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFF5C4E4E),
                            size: 24,
                          ),
                          filled: true,
                          fillColor: Color(0XFFF2F2F2),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 0, style: BorderStyle.none))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Container(
                      height: 35,
                      width: 111,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFF2F2F2)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Filter",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF5C4E4E).withOpacity(0.45),
                            ),
                          ),
                          SizedBox(
                            width: 45,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF5C4E4E),
                            size: 26,
                          ),
                        ],
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
                      height: 35,
                      width: 111,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFF2F2F2)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Sort by",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF5C4E4E).withOpacity(0.45),
                            ),
                          ),
                          SizedBox(
                            width: 33,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF5C4E4E),
                            size: 26,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      //
                    },
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                  // error
                  // height: 480,
                  height: 635,
                  width: 410,
                  child: Expanded(
                    child: Container(
                        height: 122,
                        width: 380,
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          removeBottom: true,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: adoptionPhotos.length,
                              itemBuilder: (context, i) {
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Container(
                                      height: 70,
                                      width: 380,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBB9457),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(12, 9, 0, 9),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 52,
                                              width: 52,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      adoptionPhotos[i]),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  adoptionName[i],
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFEFEFEF)),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Container(
                                                  width: 245,
                                                  child: Text(
                                                    adoptionBreed[i],
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(
                                                        0xFFEFEFEF,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  isSelected[i] =
                                                      !isSelected[i];
                                                  setState(() {});
                                                },
                                                child: isSelected[i]
                                                    ? Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Color(0xFFFF0000),
                                                        size: 28,
                                                      )
                                                    : Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            Color(0xFFFF0000),
                                                        size: 28,
                                                      )),
                                          ],
                                        ),
                                      )),
                                );
                              }),
                        )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
