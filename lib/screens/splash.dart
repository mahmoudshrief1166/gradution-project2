import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:graduitproject/wedgits/navbar.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
    Future.delayed(
      const Duration(seconds: 7),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => (FirebaseAuth.instance.currentUser == null)
                ? const MyNavBar()
                : const MyNavBar(),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(45, 62, 78, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: height / 100,
          ),
          Expanded(
            flex: 5,
            child: Text(
              ''': قــــــــال الله تعالى \n مَّثَلُ الَّذِينَ يُنفِقُونَ أَمْوَالَهُمْ فِي سَبِيلِ اللَّهِ كَمَثَلِ حَبَّةٍ أَنبَتَتْ سَبْعَ سَنَابِلَ فِي كُلِّ سُنبُلَةٍ مِّائَةُ حَبَّةٍ ۗ وَاللَّهُ يُضَاعِفُ لِمَن يَشَاءُ ۗ وَاللَّهُ وَاسِعٌ عَلِيمٌ \n [البقرة:261]''',
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: "Tajawal",
                color: const Color.fromRGBO(147, 184, 78, 1),
                fontWeight: FontWeight.bold,
                fontSize: width / 11.5,
              ),
            ),
          ),
          SizedBox(
            height: height / 100,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  "https://charity-proj.netlify.app/images/category-1.png",
                  fit: BoxFit.fill,
                  height: width / 2,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          const Expanded(
              flex: 3,
              child: Image(image: AssetImage('assets/images/sopol.jpg'))),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const MyNavBar(),
                    ),
                  );
                },
                child: Text(
                  "Skip >>>",
                  style: TextStyle(
                    fontFamily: "Tajawal",
                    color: Colors.white,
                    fontSize: width / 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
