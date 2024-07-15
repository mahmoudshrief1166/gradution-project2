import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduitproject/screens/Alarm.dart';
import 'package:graduitproject/screens/Alarm2.dart';
import 'package:graduitproject/screens/Alarm3.dart';

import 'package:graduitproject/theme/app_theme.dart';
import 'package:graduitproject/theme/bloc/theme_bloc.dart';
import 'package:graduitproject/wedgits/card.dart';
import 'package:graduitproject/wedgits/charityCard.dart';
import 'package:graduitproject/wedgits/newSadakatCard.dart';
import '../wedgits/drawer.dart';
import '../wedgits/newCard.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List cardlist = [
    CharityCard(
        imageurl: "https://charity-proj.netlify.app/images/association-1.png"),
    CharityCard(
        imageurl: "https://charity-proj.netlify.app/images/association-1.png"),
    CharityCard(
        imageurl: "https://charity-proj.netlify.app/images/association-1.png"),
    CharityCard(
        imageurl: "https://charity-proj.netlify.app/images/association-1.png"),
  ];
  final List cardlist2 = [
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
  final test = const [NewCard(), NewCard()];
  final List cardlist3 = [
    NewSadakatCard(
      CardTitle: "زكاة",
      CardText:
          ''' وَالْمُقِيمِينَ الصَّلَاةَ ۚ وَالْمُؤْتُونَ الزَّكَاةَ وَالْمُؤْمِنُونَ بِاللَّهِ وَالْيَوْمِ الْآخِرِ أُولَٰئِكَ سَنُؤْتِيهِمْ أَجْرًا عَظِيمًا  \n[النساء:162]''',
      ShadowCalar: const Color.fromARGB(255, 245, 95, 84),
      Imagepath: "assets/images/zaka.png",
    ),
    NewSadakatCard(
      CardTitle: "صدقات",
      CardText:
          '''إِنَّمَا الصَّدَقَاتُ لِلْفُقَرَاءِ وَالْمَسَاكِينِ وَالْعَامِلِينَ عَلَيْهَا وَالْمُؤَلَّفَةِ قُلُوبُهُمْ وَفِي الرِّقَابِ وَالْغَارِمِينَ وَفِي سَبِيلِ اللَّه [التوبة:60]''',
      ShadowCalar: const Color.fromARGB(235, 249, 162, 41),
      Imagepath: "assets/images/sadakat.png",
    ),
    NewSadakatCard(
      CardTitle: "كفارات",
      CardText:
          '''وَالْجُرُوحَ قِصَاصٌ ۚ فَمَنْ تَصَدَّقَ بِهِ فَهُوَ كَفَّارَةٌ لَهُ ۚ وَمَنْ لَمْ يَحْكُمْ بِمَا أَنْزَلَ اللَّهُ فَأُولَٰئِكَ هُمُ الظَّالِمُونَ \n[المائده:45]''',
      ShadowCalar: const Color.fromARGB(235, 95, 127, 245),
      Imagepath: "assets/images/kafarat.png",
    ),
    NewSadakatCard(
      CardTitle: "تبرع بالدم",
      CardText:
          '''وَمَنْ أَحْيَاهَا فَكَأَنَّمَا أَحْيَا النَّاسَ جَمِيعًا\n[المائده:32]''',
      ShadowCalar: const Color.fromARGB(235, 216, 37, 1),
      Imagepath: "assets/images/bload.png",
    ),
    NewSadakatCard(
      CardTitle: "التبرعات العينيه",
      CardText:
          '''وَيُؤْثِرُونَ عَلَىٰ أَنْفُسِهِمْ وَلَوْ كَانَ بِهِمْ خَصَاصَةٌ ۚ وَمَنْ يُوقَ شُحَّ نَفْسِهِ فَأُولَٰئِكَ هُمُ الْمُفْلِحُونَ\n[الحشر:9]''',
      ShadowCalar: const Color.fromARGB(235, 129, 2, 127),
      Imagepath: "assets/images/tabatoa.png",
    ),
  ];
  final Color textColor = const Color.fromRGBO(52, 61, 64, 1);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final widrh = MediaQuery.of(context).size.width;

    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "سبل",
          style: TextStyle(
            fontFamily: 'Blaka Hollow',
            color: Color.fromRGBO(145, 104, 58, 1),
            fontSize: 60,
          ),
        ),
      ),
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context)
          .scaffoldBackgroundColor, //const Color.fromRGBO(244, 244, 244, 1),
      body: ListView(
        children: [
          // Image.asset(
          //   'assets/images/1.png',
          // ),
          Container(
            child: AnimSearchBar(
              color: const Color.fromRGBO(145, 104, 58, 1),
              textFieldColor: Colors.white,
              textFieldIconColor: const Color.fromRGBO(145, 104, 58, 1),
              searchIconColor: Colors.black,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                height: 1,
              ),
              helpText: "     Search.... ",
              width: 400,
              autoFocus: true,
              closeSearchOnSuffixTap: true,
              animationDurationInMilli: 1000,
              rtl: true,
              textController: textEditingController,
              onSuffixTap: () {},
              onSubmitted: (r) => r,
            ),
          ),
          Text(
            "حملات",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: height / 100,
          ),
          buildslider(child: test, context: context),
          Text(
            "فرص التبرع",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
            //textScaleFactor: width / 120,
          ),
          const SizedBox(
            height: 10,
          ),
          buildslider(child: cardlist3, context: context),
          Text(
            "حالات سريعه",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: height / 100,
          ),
          buildslider(child: cardlist2, context: context),
          Text(
            "جمعيات",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: height / 100,
          ),
          buildslider(child: cardlist, context: context),
          SizedBox(
            height: height / 100,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              elevation: 5,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              backgroundColor: const Color.fromRGBO(145, 104, 58, 1),
              context: context,
              builder: (ctx) {
                return Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color.fromRGBO(145, 104, 58, 1),
                            Color.fromRGBO(68, 35, 5, 1),
                            Colors.white
                          ])),
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(10),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AlarmState()));
                            },
                            child: const Text(
                              'ابلاغ عن حالة',
                              style: TextStyle(
                                  color: Color.fromRGBO(145, 104, 58, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Rubik"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(10),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Alarm2(),
                                  ));
                            },
                            child: const Text(
                              '  تبرع بالمستعمل',
                              style: TextStyle(
                                  color: Color.fromRGBO(145, 104, 58, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Rubik"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(10),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Alarm3(),
                                  ));
                            },
                            child: const Text(
                              '  قنوات التبرع',
                              style: TextStyle(
                                  color: Color.fromRGBO(145, 104, 58, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Rubik"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(10),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              '  دفع الزكاه',
                              style: TextStyle(
                                  color: Color.fromRGBO(145, 104, 58, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Rubik"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        backgroundColor: const Color.fromRGBO(145, 104, 58, 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

Widget buildslider(
    {required List<dynamic> child, required BuildContext context}) {
  return CarouselSlider.builder(
    itemCount: child.length,
    itemBuilder: (BuildContext context, int index, int pageViewIndex) {
      return Container(
        height: MediaQuery.of(context).size.height / 2 + 100,
        width: MediaQuery.of(context).size.width - 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        //margin: const EdgeInsets.all(7),
        child: child[index],
      );
      /*Card(
        color: const Color.fromRGBO(244, 244, 244, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          child: child[index],
        ),
      );*/
    },
    options: CarouselOptions(
      height: MediaQuery.of(context).size.height / 2 + 102,
      initialPage: 0,
      autoPlay: true,
      // animateToClosest: true,
      disableCenter: true,
      padEnds: true,
      autoPlayInterval: const Duration(seconds: 5),
      //autoPlayAnimationDuration: const Duration(seconds: 2),
      autoPlayCurve: Curves.easeIn,
    ),
  );
}
