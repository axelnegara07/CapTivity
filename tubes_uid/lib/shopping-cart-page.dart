import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:tubes_uid/shop-checkout-page.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  TextEditingController search = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFEFC7),
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text(
          "Shopping Cart",
          style: TextStyle(
              fontSize: 26,
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
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
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
                              itemCount: 1,
                              itemBuilder: (context, i) {
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Container(
                                      height: 115,
                                      width: 380,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBB9457),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(2, 9, 0, 9),
                                        child: Row(
                                          children: [
                                            Material(
                                              color: Colors.transparent,
                                              child: Checkbox(
                                                value: isChecked,
                                                // checkColor: Color(0xFFF99582A),
                                                activeColor: Color(0xFFF99582A),
                                                onChanged: (value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                },
                                              ),
                                            ),
                                            Container(
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/shop/popular/satu.png"),
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
                                                  height: 6,
                                                ),
                                                Text(
                                                  "Dog Totebag",
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
                                                  child: Text(
                                                    "Rp 10.000",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color(
                                                        0xFFEFEFEF,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 6,
                                                ),
                                                Container(
                                                  height: 26,
                                                  width: 84,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.white,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "-",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.5)),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text("1"),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Text(
                                                        "+",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.5)),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                                );
                              }),
                        )),
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
                      width: 10,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Checkbox(
                        value: isChecked,
                        activeColor: Color(0xFFF99582A),
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "All",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          isChecked
                              ? Text(
                                  "Rp 10.000",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                )
                              : Text(
                                  "Rp 0",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: Container(
                        width: 143,
                        color: Color(0xFFFFDB97),
                        child: Center(
                          child: isChecked
                              ? Text(
                                  "Checkout (1)",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              : Text(
                                  "Checkout (0)",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                        ),
                      ),
                      onTap: () {
                        if (isChecked) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShopCheckoutPage()));
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
