// ignore: file_names
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import '../wedgits/card.dart';

class Adahy extends StatefulWidget {
  const Adahy({super.key});

  @override
  State<Adahy> createState() => _AdahyState();
}

class _AdahyState extends State<Adahy> {
  List cardlist = [
    MyCard(
      title: "عقيقة",
      firstline: "لمولود عمره لم يتجاوز اسبوع   ",
      secondline: "التكلفه 450 جنبه للفرد   ",
      thirdline: "تم سداد 300   ",
      forthline: "متبقي 150   ",
      imageurl:
          "https://tse4.mm.bing.net/th?id=OIP.CRB5Zp5Ln_noRrBptjQFwQHaEM&pid=Api&P=0&h=220",
    ),
    MyCard(
      title: "عقيقة",
      firstline: "لمولود عمره لم يتجاوز اسبوع   ",
      secondline: "التكلفه 450 جنبه للفرد   ",
      thirdline: "تم سداد 300   ",
      forthline: "متبقي 150   ",
      imageurl:
          "https://tse4.mm.bing.net/th?id=OIP.CRB5Zp5Ln_noRrBptjQFwQHaEM&pid=Api&P=0&h=220",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(45, 62, 78, 1),
          elevation: 0,
          title: const Text(
            'اضاحي',
            style: TextStyle(
                fontFamily: "Tajawal",
                color: const Color.fromARGB(255, 130, 187, 160),
                fontSize: 20),
          ),
        ),
        backgroundColor: const Color.fromRGBO(45, 62, 78, 1),
        body: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            CarouselSlider.builder(
              itemCount: cardlist.length,
              itemBuilder:
                  (BuildContext context, int index, int pageViewIndex) {
                return Card(
                  color: const Color.fromRGBO(45, 62, 78, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    child: cardlist[index],
                  ),
                );
              },
              options: CarouselOptions(
                height: 500,
                initialPage: 0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 7),
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                autoPlayCurve: Curves.easeInBack,
              ),
            )
          ],
        ));
  }
}
