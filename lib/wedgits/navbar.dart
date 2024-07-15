import 'package:flutter/material.dart';
import 'package:graduitproject/screens/HomePage.dart';
import 'package:graduitproject/screens/profile.dart';
import 'package:graduitproject/screens/shoppingcart.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  // ignore: non_constant_identifier_names
  int selected_index = 0;
  // ignore: non_constant_identifier_names
  void select_page(int index) {
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget ActivePage = HomePage();
    if (selected_index == 1) {
      ActivePage = ProfileScreen();
    } else if (selected_index == 2) {
      ActivePage = const ShoppingCart();
    }
    return Scaffold(
      body: ActivePage,
      bottomNavigationBar: CurvedNavigationBar(
        onTap: select_page,
        // currentIndex: selected_index,
        items: const [
          Icon(
            Icons.home,
            color: Color.fromRGBO(145, 104, 58, 1),
          ),
          Icon(
            Icons.person_2_sharp,
            color: Color.fromRGBO(145, 104, 58, 1),
          ),
          Icon(
            Icons.shopping_cart_sharp,
            color: Color.fromRGBO(145, 104, 58, 1),
          ),
        ],
        color: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: const Color.fromRGBO(145, 104, 58, 1),
        height: 55,
        animationDuration: const Duration(milliseconds: 800),
        animationCurve: Curves.linear,
        // buttonBackgroundColor: Colors.black.withOpacity(0.3),
      ),
    );
  }
}
