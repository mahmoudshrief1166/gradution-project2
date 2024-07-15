import 'package:flutter/material.dart';

import 'package:graduitproject/wedgits/SadakatCard.dart';
import 'package:graduitproject/wedgits/newCard.dart';
import 'package:graduitproject/wedgits/newSadakatCard.dart';

class Sadaqat extends StatefulWidget {
  const Sadaqat({super.key});

  @override
  State<Sadaqat> createState() => _SadaqatState();
}

class _SadaqatState extends State<Sadaqat> {
  List cardlist = [
    SadakaCard(
        title: "صدقات",
        imageurl: "https://charity-proj.netlify.app/images/category-1.png",
        lable:
            '''إِنَّمَا الصَّدَقَاتُ لِلْفُقَرَاءِ وَالْمَسَاكِينِ وَالْعَامِلِينَ عَلَيْهَا وَالْمُؤَلَّفَةِ قُلُوبُهُمْ وَفِي الرِّقَابِ وَالْغَارِمِينَ وَفِي سَبِيلِ اللَّهِ [التوبة:60]'''),
    SadakaCard(
        title: "صدقات",
        imageurl: "https://charity-proj.netlify.app/images/category-1.png",
        lable:
            '''إِنَّمَا الصَّدَقَاتُ لِلْفُقَرَاءِ وَالْمَسَاكِينِ وَالْعَامِلِينَ عَلَيْهَا وَالْمُؤَلَّفَةِ قُلُوبُهُمْ وَفِي الرِّقَابِ وَالْغَارِمِينَ وَفِي سَبِيلِ اللَّهِ [التوبة:60]'''),
    SadakaCard(
        title: "صدقات",
        imageurl: "https://charity-proj.netlify.app/images/category-1.png",
        lable:
            '''إِنَّمَا الصَّدَقَاتُ لِلْفُقَرَاءِ وَالْمَسَاكِينِ وَالْعَامِلِينَ عَلَيْهَا وَالْمُؤَلَّفَةِ قُلُوبُهُمْ وَفِي الرِّقَابِ وَالْغَارِمِينَ وَفِي سَبِيلِ اللَّهِ [التوبة:60]'''),
  ];
  List test = [NewCard(), NewCard()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(45, 62, 78, 1),
        elevation: 0,
        title: const Text(
          'صدقات',
          style: TextStyle(
              fontFamily: "Tajawal",
              color: const Color.fromARGB(255, 130, 187, 160),
              fontSize: 20),
        ),
      ),
      backgroundColor: const Color.fromRGBO(45, 62, 78, 1),
      body: Center(
        child: NewSadakatCard(
          CardTitle: "التبرعات العينيه",
          CardText:
              '''وَيُؤْثِرُونَ عَلَىٰ أَنْفُسِهِمْ وَلَوْ كَانَ بِهِمْ خَصَاصَةٌ ۚ وَمَنْ يُوقَ شُحَّ نَفْسِهِ فَأُولَٰئِكَ هُمُ الْمُفْلِحُونَ\n[الحشر:9]''',
          ShadowCalar: Color.fromARGB(235, 129, 2, 127),
          Imagepath: "assets/images/tabatoa.png",
        ),
      ),
      /* ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            CarouselSlider.builder(
              itemCount: test.length,
              itemBuilder:
                  (BuildContext context, int index, int pageViewIndex) {
                return Card(
                    color: const Color.fromRGBO(45, 62, 78, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      child: test[index],
                    ));
              },
              options: CarouselOptions(
                height: 470,
                initialPage: 0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 7),
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                autoPlayCurve: Curves.easeInBack,
              ),
            )
          ],
        ),*/
    );
  }
}
