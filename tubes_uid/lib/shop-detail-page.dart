import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:tubes_uid/ShopModel.dart';

class ShopDetailPage extends StatefulWidget {
  const ShopDetailPage({super.key});

  @override
  State<ShopDetailPage> createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
  List<ShopModel> shops = [
    ShopModel(
        productPhoto: "assets/shop/popular/satu.png",
        name: "Fluffy Dog Totebag",
        price: 10000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/popular/dua.png",
        name: "Labrador T-shirt",
        price: 70000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/popular/tiga.png",
        name: "Labrador T-shirt",
        price: 70000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/popular/empat.png",
        name: "Labrador T-shirt",
        price: 70000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/popular/lima.png",
        name: "Labrador T-shirt",
        price: 70000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/all/satu.png",
        name: "Labrador T-shirt",
        price: 10000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/all/dua.png",
        name: "Black Dog T-shirt",
        price: 50000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/all/tiga.png",
        name: "Aplique Zebra",
        price: 15000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/all/empat.png",
        name: "Zebra Party Bag",
        price: 20000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/all/lima.png",
        name: "Labrador T-shirt",
        price: 70000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/all/enam.png",
        name: "Black Dog T-shirt",
        price: 50000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/all/tujuh.png",
        name: "Aplique Zebra",
        price: 15000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/all/delapan.png",
        name: "Zebra Party Bag",
        price: 20000,
        description: "A cute bag to help you carry your lot of things."),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image.asset(
        //   "assets/doodle.png",
        //   height: MediaQuery.of(context).size.height,
        //   width: MediaQuery.of(context).size.width,
        //   fit: BoxFit.cover,
        // ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xFFFFEFC7),
          appBar: AppBar(
            toolbarHeight: 70,
            centerTitle: true,
            title: Text(
              "Detail",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF1F1F1)),
            ),
            backgroundColor: Color(0xFFBB9457),
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fluffy Dog Totebag",
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xFF575757),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart,
                            size: 34,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Container(
                      height: 124,
                      width: 124,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/shop/popular/satu.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 140,
                      width: 240,
                      color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rp. 70.000",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Description:",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 237,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Text(
                              "A cute totebag to help you carry your lot of things.",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text("data"),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 8),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFBB9457),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "Add",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                ),
                                onTap: () {
                                  //
                                },
                              ),
                            ],
                          ),
                        ],
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
                      child: Center(
                        child: Text(
                          "Related items",
                          style: TextStyle(
                              fontSize: 24,
                              color: Color(0xFF575757),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(33, 25, 33, 0),
                  child: GridView.count(
                    shrinkWrap: true,
                    childAspectRatio: 0.8,
                    crossAxisCount: 2,
                    mainAxisSpacing: 29,
                    crossAxisSpacing: 40,
                    children: List.generate(8,
                        // productPhotos.length,
                        (i) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShopDetailPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        '${shops[i + 5].productPhoto.toString()}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${shops[i + 5].name.toString()}',
                                style: TextStyle(
                                    color: Color(0XFF000000),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Rp ${shops[i + 5].price.toString()}',
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
