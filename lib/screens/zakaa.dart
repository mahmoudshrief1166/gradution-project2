import 'package:flutter/material.dart';

import 'package:graduitproject/wedgits/card.dart';

class Zakaa extends StatefulWidget {
  const Zakaa({super.key});

  @override
  State<Zakaa> createState() => _ZakaaState();
}

class _ZakaaState extends State<Zakaa> {
  List cardlist2 = [
    MyCard(
        title: "غذاء للجميع",
        firstline: "وفرلهم احتياجاتهم الاساسيه   ",
        secondline: "التكلفه 1000 جنيه   ",
        thirdline: "تم سداد 600 جنيه   ",
        forthline: "متبقي 400 جنيه   ",
        imageurl: "https://charity-proj.netlify.app/images/campaign-image.png"),
    MyCard(
        title: "غذاء للجميع",
        firstline: "وفرلهم احتياجاتهم الاساسيه   ",
        secondline: "التكلفه 1000 جنيه   ",
        thirdline: "تم سداد 600 جنيه   ",
        forthline: "متبقي 400 جنيه   ",
        imageurl: "https://charity-proj.netlify.app/images/campaign-image.png"),
    MyCard(
        title: "غذاء للجميع",
        firstline: "وفرلهم احتياجاتهم الاساسيه   ",
        secondline: "التكلفه 1000 جنيه   ",
        thirdline: "تم سداد 600 جنيه   ",
        forthline: "متبقي 400 جنيه   ",
        imageurl: "https://charity-proj.netlify.app/images/campaign-image.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(45, 62, 78, 1),
        elevation: 0,
        title: const Text(
          'زكاه',
          style: TextStyle(
              fontFamily: "Tajawal",
              color: const Color.fromARGB(255, 130, 187, 160),
              fontSize: 20),
        ),
      ),
      backgroundColor: const Color.fromRGBO(45, 62, 78, 1),
      body: ListView(
        children: const [
          SizedBox(
            height: 15,
          ),
          Text(
            "حملات",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Tajawal",
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          // buildslider(child: cardlist2)
        ],
      ),
    );
  }
}
