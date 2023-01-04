import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:tubes_uid/ShopModel.dart';
import 'package:tubes_uid/shop-detail-page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage();

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  TextEditingController search = TextEditingController();
  List<ShopModel> shops = [
    ShopModel(
        productPhoto: "assets/shop/popular/satu.png",
        name: "Dog Totebag",
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
        name: "Cute Sloth Mug",
        price: 24000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/all/enam.png",
        name: "Lion T-shirt",
        price: 50000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/all/tujuh.png",
        name: "Unicorn Totebag",
        price: 12000,
        description: "A cute totebag to help you carry your lot of things."),
    ShopModel(
        productPhoto: "assets/shop/all/delapan.png",
        name: "Deer T-Shirt",
        price: 50000,
        description: "A cute bag to help you carry your lot of things."),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/doodle.png",
              ),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
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
                          "Our Popular Items",
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
                  Expanded(
                    child: Container(
                      height: 124,
                      width: 124,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          // categoryPhotos.length,
                          itemBuilder: (context, i) {
                            return Padding(
                              padding: EdgeInsets.only(right: 24),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ShopDetailPage(
                                                productPhoto:
                                                    shops[i].productPhoto,
                                                name: shops[i].name,
                                                price: shops[i].price,
                                                description:
                                                    shops[i].description,
                                              )));
                                },
                                child: Container(
                                  height: 124,
                                  width: 124,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          '${shops[i].productPhoto.toString()}'),
                                      fit: BoxFit.cover,
                                    ),
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
                      ],
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
                  children: List.generate(13,
                      // productPhotos.length,
                      (i) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShopDetailPage(
                                      productPhoto: shops[i].productPhoto,
                                      name: shops[i].name,
                                      price: shops[i].price,
                                      description: shops[i].description,
                                    )));
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
                                      '${shops[i].productPhoto.toString()}'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${shops[i].name.toString()}',
                              style: TextStyle(
                                  color: Color(0XFF000000),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              NumberFormat.currency(
                                      locale: "id",
                                      symbol: "Rp ",
                                      decimalDigits: 0)
                                  .format(shops[i].price),
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
    );
  }
}
