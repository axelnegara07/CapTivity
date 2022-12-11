import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tubes_uid/profile-page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();
  List<String> categoryPhotos = [
    "assets/category/dog.png",
    "assets/category/cat.png",
    "assets/category/rabbit.png",
    "assets/category/hamster.png",
    "assets/category/bird.png"
  ];

  List<String> informationPhotos = [
    "assets/information/golden.png",
    "assets/information/belgian.png",
    "assets/information/chihuahua.png",
    "assets/information/poodle.png",
    "assets/information/cat.png"
  ];

  List<String> informationTittle = [
    "Golden Retriever",
    "Belgian Malinois",
    "Chihuahua",
    "Poodle",
    "Common Cat"
  ];

  List<String> informationDesc = [
    "The Golden Retriever is a sturdy, muscular dog of medium size, famous for the dense, lustrous...",
    "Belgian Malinois are squarely built, proud, and alert herders standing 22 to 26 inches. Strong and well...",
    "The Chihuahua is a balanced, graceful dog of terrier-like demeanor, weighing no more...",
    "Poodles are extremely intelligent and are easily trained. They are agile and graceful as well as...",
    "The cat is a domestic species of small carnivorous mammal."
  ];

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
                padding: EdgeInsets.fromLTRB(24, 44, 12, 16),
                height: 102,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFBB9457),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: TextFormField(
                        controller: search,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Search animal..',
                            hintStyle: TextStyle(color: Color(0xFF5C4E4E)),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xFF5C4E4E),
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
                      width: 16,
                    ),
                    InkWell(
                      child: Container(
                        height: 58,
                        width: 58,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/pp.png"),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(fontSize: 24, color: Color(0xFF575757)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 123,
                            width: 123,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: categoryPhotos.length,
                                itemBuilder: (context, i) {
                                  return Padding(
                                    padding: EdgeInsets.only(right: 24),
                                    child: Container(
                                      height: 160,
                                      width: 125,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(categoryPhotos[i]),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "Information",
                        style:
                            TextStyle(fontSize: 24, color: Color(0xFF575757)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          // error
                          // height: 480,
                          height: 423,
                          width: 380,
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
                                      itemCount: informationPhotos.length,
                                      itemBuilder: (context, i) {
                                        return Padding(
                                          padding: EdgeInsets.only(bottom: 15),
                                          child: Container(
                                              height: 122,
                                              width: 380,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFBB9457),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                // right 16 padding
                                                padding: EdgeInsets.fromLTRB(
                                                    17, 14, 0, 14),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 84,
                                                      width: 84,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              informationPhotos[
                                                                  i]),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          informationTittle[i],
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Color(
                                                                  0xFFEFEFEF)),
                                                        ),
                                                        SizedBox(
                                                          height: 6,
                                                        ),
                                                        Container(
                                                          height: 63,
                                                          width: 245,
                                                          child: Text(
                                                            informationDesc[i],
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color: Color(
                                                                0xFFEFEFEF,
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
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
            ],
          ),
        )
      ],
    );
  }
}
