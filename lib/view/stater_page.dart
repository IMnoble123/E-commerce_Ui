import 'package:flutter/material.dart';
import 'package:shop_now/view/account_page.dart';
import 'package:shop_now/view/cart_page.dart';
import 'package:shop_now/view/homepage.dart';
import 'package:shop_now/view/search_page.dart';

class StaterPage extends StatefulWidget {
  const StaterPage({Key? key}) : super(key: key);

  @override
  State<StaterPage> createState() => _StaterPageState();
}

class _StaterPageState extends State<StaterPage> {
   int _currentIndex = 0;
  final List pages = [
    const Homepage(),
    const SearchPage(),
    const AccountPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedFontSize: 11.0,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 11.0,
        currentIndex: _currentIndex,
        onTap: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: "cart")
        ],
      ),
    );
  }
}