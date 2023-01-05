import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:tubes_uid/DonationModel.dart';
import 'package:tubes_uid/donation-finish-page.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({super.key});

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  double total = 0;
  double charge = 0;
  double subtotal = 0;
  var selectedDonation;

  List<DonationModel> donations = [
    DonationModel(nominal: 10000, isSelected: false),
    DonationModel(nominal: 20000, isSelected: false),
    DonationModel(nominal: 50000, isSelected: false),
    DonationModel(nominal: 100000, isSelected: false),
    DonationModel(nominal: 200000, isSelected: false),
    DonationModel(nominal: 500000, isSelected: false),
  ];

  getTotal() {
    selectedDonation =
        donations.where((element) => element.isSelected).toList();

    subtotal = selectedDonation.first.nominal;
    charge = subtotal * 0.05;
    total = subtotal + charge;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFEFC7),
      appBar: AppBar(
        toolbarHeight: 70,
        titleSpacing: 20,
        title: Text(
          "Donation",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 83,
                child: Column(
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 40,
                      color: Color(0xFF5E4B2C),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    selectedDonation != null
                        ? Text(
                            NumberFormat.currency(
                                    locale: "id",
                                    symbol: "Rp ",
                                    decimalDigits: 0)
                                .format(total),
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        : Text(""),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              height: 155,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFFEAB4).withOpacity(0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Nominal",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    childAspectRatio: 2.8,
                    crossAxisCount: 3,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 29,
                    children: List.generate(donations.length, (i) {
                      return InkWell(
                        onTap: () {
                          donations.forEach((element) {
                            element.isSelected = false;
                          });
                          donations[i].isSelected = !donations[i].isSelected;
                          getTotal();
                          setState(() {});
                        },
                        child: Container(
                          height: 35,
                          width: 110,
                          decoration: BoxDecoration(
                              color: donations[i].isSelected
                                  ? Color(0xFF9E772C)
                                  : Color(0xFFFFDB97),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              NumberFormat.currency(
                                      locale: "id",
                                      symbol: "Rp ",
                                      decimalDigits: 0)
                                  .format(donations[i].nominal),
                              style: TextStyle(
                                color: Color(0XFF000000),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Any Words for Donation?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    validator: (value) {},
                    cursorColor: Color(0xFFFFEFC7),
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(11, 5, 4, 11),
                        filled: true,
                        fillColor: Color(0xFFFFDB97),
                        prefixIcon: Icon(
                          Icons.edit,
                          size: 20,
                          color: Color(0xFF5C4E4E),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none)),
                    // controller: bio,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              height: 140,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFFEAB4).withOpacity(0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Detail Donation",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Donation",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFF000000).withOpacity(0.5),
                          ),
                        ),
                        // Spacer(),
                        selectedDonation != null
                            ? Text(
                                NumberFormat.currency(
                                        locale: "id",
                                        symbol: "Rp ",
                                        decimalDigits: 0)
                                    .format(subtotal),
                                style: TextStyle(
                                  color: Color(0XFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            : Text(
                                "-",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFF000000),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Fee",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFF000000).withOpacity(0.5),
                          ),
                        ),
                        // Spacer(),
                        selectedDonation != null
                            ? Text(
                                "Free",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFF000000),
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            : Text(
                                "-",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFF000000),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Charge Fee",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFF000000).withOpacity(0.5),
                          ),
                        ),
                        // Spacer(),
                        selectedDonation != null
                            ? Text(
                                NumberFormat.currency(
                                        locale: "id",
                                        symbol: "Rp ",
                                        decimalDigits: 0)
                                    .format(charge),
                                style: TextStyle(
                                  color: Color(0XFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            : Text(
                                "-",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFF000000),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ]),
                ],
              ),
            ),
            selectedDonation != null
                ? Container(
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
                                    NumberFormat.currency(
                                            locale: "id",
                                            symbol: "Rp ",
                                            decimalDigits: 0)
                                        .format(total),
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
                                "Pay & Donation Now",
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
                                    builder: (context) =>
                                        DonationFinishPage()));
                          },
                        ),
                      ],
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
