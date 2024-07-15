import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';

import 'package:graduitproject/screens/Adahy.dart';
import 'package:graduitproject/screens/Qafarat.dart';
import 'package:graduitproject/screens/aboutus.dart';
import 'package:graduitproject/screens/blood.dart';
import 'package:graduitproject/screens/sadaqat.dart';
import 'package:graduitproject/screens/shoppingcart.dart';
import 'package:graduitproject/screens/zakaa.dart';
import 'package:graduitproject/wedgits/navbar.dart';
import '../screens/login.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});
  final TextStyle? tilestyle = const TextStyle(
    fontFamily: "Tajawal",
    color: Color.fromRGBO(145, 104, 58, 1),
    fontSize: 20,
  );

  final drawerheader = DrawerHeader(
    padding: const EdgeInsets.only(top: 10),
    child: SizedBox(
      width: double.infinity,
      child: Image.asset(
        'assets/images/children.png',
        fit: BoxFit.cover,
      ),
    ),
  );

  Widget myCard(
      {required IconData? icon, String? data, void Function()? onTap}) {
    return Card(
      shadowColor: const Color.fromRGBO(243, 212, 174, 1),
      elevation: 5,
      color: Colors.white,
      child: ListTile(
          trailing: const Icon(Icons.arrow_back_ios),
          leading: Icon(
            icon,
            color: const Color.fromRGBO(145, 104, 58, 1),
            size: 20,
          ),
          title: Text(
            data!,
            style: tilestyle,
          ),
          onTap: onTap),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(145, 104, 58, 1),
      child: ListView(
        children: [
          drawerheader,
          myCard(
              icon: Icons.home,
              data: 'الرئيسـيه',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const MyNavBar()));
              }),
          myCard(
              icon: FlutterIslamicIcons.allah99,
              data: 'صـدقات',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => const Sadaqat()));
              }),
          myCard(
              icon: FlutterIslamicIcons.solidMuslim2,
              data: 'كفارات',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const Qafarat()));
              }),
          myCard(
              icon: FlutterIslamicIcons.cow,
              data: 'اضـاحي',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const Adahy()));
              }),
          myCard(
              icon: FlutterIslamicIcons.family,
              data: 'زكاه',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const Zakaa()));
              }),
          myCard(
              icon: FlutterIslamicIcons.community,
              data: 'تبرع بالدم',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const Blood()));
              }),
          myCard(
              icon: Icons.shopping_cart_sharp,
              data: 'عربه التسوق',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const ShoppingCart()));
              }),
          myCard(
              icon: Icons.info,
              data: 'About Us',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const AbousAus()));
              }),
          Hero(
            tag: "login",
            child: myCard(
              icon: Icons.person_2_sharp,
              data: ' حسـابي',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
