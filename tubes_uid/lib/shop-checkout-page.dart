import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tubes_uid/shop-finish-page.dart';

class ShopCheckoutPage extends StatefulWidget {
  const ShopCheckoutPage({super.key});

  @override
  State<ShopCheckoutPage> createState() => _ShopCheckoutPageState();
}

class _ShopCheckoutPageState extends State<ShopCheckoutPage> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFEFC7),
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: Text(
          "Checkout",
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
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFBB9457)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Current Address",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Sarijadi, Jl. Cibogo No.26, Sukawarna, Kec. Sukajadi, Kota Bandung, Jawa Barat 40164",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              child: Text(
                "Change address",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF575757),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              width: 380,
              child: TextFormField(
                controller: search,
                cursorColor: Color(0xFF5C4E4E),
                style: TextStyle(fontSize: 12),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    isDense: true,
                    hintText: 'Type here...',
                    hintStyle:
                        TextStyle(color: Color(0xFF5C4E4E).withOpacity(0.45)),
                    filled: true,
                    fillColor: Color(0XFFF2F2F2),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 0, style: BorderStyle.none))),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 190,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/shop/map.png",
                      ),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              height: 165,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFFEAB4).withOpacity(0.5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12.0),
                      child: Text(
                        "Order detail",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF575757),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 40,
                        height: 75,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Color(0xFF575757)),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Dog Totebag",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF575757)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 275,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Rp 10.000",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(
                                              0xFF575757,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "x 1",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(
                                              0xFF575757,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 390,
                      alignment: Alignment.topRight,
                      child: Text(
                        "Total: Rp 110.000",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(
                            0xFF575757,
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(22, 40, 0, 0),
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset("assets/shop/gopay.png"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 78,
                            child: Text(
                              "Rp 10.000",
                              style: TextStyle(
                                color: Color(0XFF636366),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
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
                    width: 12,
                  ),
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 210,
                      decoration: BoxDecoration(
                          color: Color(0xFFF99582A),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Pay & Order Now",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShopFinishPage()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
