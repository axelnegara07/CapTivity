import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tubes_uid/adoption-page.dart';
import 'package:tubes_uid/chat-page.dart';
import 'package:tubes_uid/donation-page.dart';
import 'package:tubes_uid/home-page.dart';
import 'package:tubes_uid/shop-page.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({super.key});

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    const HomePage(),
    const AdoptionPage(),
    const ShopPage(),
    const DonationPage(),
    const ChatPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFBB9457),
        type: BottomNavigationBarType.fixed,
        iconSize: 26,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Pets'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_mark), label: 'Donate'),
          BottomNavigationBarItem(icon: Icon(Icons.wechat), label: 'Message'),
        ],
        selectedItemColor: Color(0xFF251E11),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
    );
  }
}
