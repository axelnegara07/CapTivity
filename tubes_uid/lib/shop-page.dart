import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  TextEditingController search = TextEditingController();
  List<String> categoryPhotos = [
    "assets/shop/popular/satu.png",
    "assets/shop/popular/dua.png",
    "assets/shop/popular/tiga.png",
    "assets/shop/popular/empat.png",
    "assets/shop/popular/lima.png"
  ];

  List<String> productPhotos = [
    "assets/shop/all/satu.png",
    "assets/shop/all/dua.png",
    "assets/shop/all/tiga.png",
    "assets/shop/all/empat.png",
    "assets/shop/all/lima.png",
    "assets/shop/all/enam.png",
    "assets/shop/all/tujuh.png",
    "assets/shop/all/delapan.png",
  ];

  List<String> productTittle = [
    "Labrador T-shirt",
    "Black Dog T-shirt",
    "Aplique Zebra",
    "Zebra Party Bag",
    "Labrador T-shirt",
    "Black Dog T-shirt",
    "Aplique Zebra",
    "Zebra Party Bag",
  ];

  List<String> productPrice = [
    "Rp 70.000",
    "Rp 50.000",
    "Rp 15.000",
    "Rp 20.000",
    "Rp 70.000",
    "Rp 50.000",
    "Rp 15.000",
    "Rp 20.000",
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
          appBar: AppBar(
            toolbarHeight: 70,
            titleSpacing: 20,
            title: Text(
              "Shoptivity",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF1F1F1)),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFFBB9457),
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 13, 0, 10),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 105,
                            ),
                            Text(
                              "Our Popular Items",
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF575757),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Icon(
                              Icons.shopping_cart,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 124,
                        width: 124,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: categoryPhotos.length,
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: EdgeInsets.only(right: 24),
                                child: Container(
                                  height: 124,
                                  width: 124,
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
                  height: 33,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      height: 36,
                      width: MediaQuery.of(context).size.width - 48,
                      child: Row(
                        children: [
                          Text(
                            "Buy Now",
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF575757),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 79,
                          ),
                          Flexible(
                            flex: 1,
                            child: TextFormField(
                              controller: search,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                  isDense: true,
                                  hintText: 'Search...',
                                  hintStyle: TextStyle(
                                      color:
                                          Color(0xFF5C4E4E).withOpacity(0.45)),
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
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(33, 45, 33, 0),
                  child: GridView.count(
                    shrinkWrap: true,
                    childAspectRatio: 0.8,
                    crossAxisCount: 2,
                    mainAxisSpacing: 29,
                    crossAxisSpacing: 40,
                    children: List.generate(productPhotos.length, (i) {
                      return InkWell(
                        onTap: () {
                          //fungsi
                        },
                        child: Container(
                          // padding: EdgeInsets.fromLTRB(42, 27, 42, 21),
                          decoration: BoxDecoration(
                            // image: DecorationImage(
                            //     image: AssetImage(productPhotos[i])),
                            color: Colors.transparent,
                            // color: languages[i].isSelected ? Color(0XFFFBD45F) : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            // border: Border.all(color: languages[i].isSelected ? Color(0XFFFBD45F) :  Color(0XFFE7E7E7)),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(productPhotos[i]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                productTittle[i],
                                style: TextStyle(
                                    color: Color(0XFF000000),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                productPrice[i],
                                style: TextStyle(
                                  color: Color(0XFF000000),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
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
