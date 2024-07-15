import 'package:flutter/material.dart';

class AlarmState extends StatefulWidget {
  const AlarmState({super.key});

  @override
  State<AlarmState> createState() => _AlarmStateState();
}

class _AlarmStateState extends State<AlarmState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          "ابلاغ عن حاله",
          style: TextStyle(
            color: Color.fromRGBO(145, 104, 58, 1),
            fontSize: 30,
            fontFamily: "Rubik",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              "assets/images/3.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            " تسجيل بياناتك",
            style: TextStyle(
              color: Color.fromRGBO(145, 104, 58, 1),
              fontSize: 30,
              fontFamily: "Rubik",
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  text_field2(
                      title: "الاسم", hint: "اكتب اسمك", icon: Icons.person),
                  const SizedBox(
                    height: 10,
                  ),
                  text_field2(
                      title: "العنوان",
                      hint: "اكتب عنوانك",
                      icon: Icons.gps_fixed_outlined),
                  const SizedBox(
                    height: 10,
                  ),
                  text_field2(
                      title: "التليفون",
                      hint: "رقم التليفون",
                      icon: Icons.phone),
                  const SizedBox(
                    height: 10,
                  ),
                  text_field2(
                      title: "اختر الجمعيه",
                      hint: "اختر الجمعيه",
                      icon: Icons.home),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    " تسجيل بيانات الحاله",
                    style: TextStyle(
                      color: Color.fromRGBO(145, 104, 58, 1),
                      fontSize: 30,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  text_field2(
                      title: "الاسم",
                      hint: "اكتب اسم الحاله",
                      icon: Icons.person),
                  const SizedBox(
                    height: 10,
                  ),
                  text_field2(
                      title: "العنوان",
                      hint: "اكتب عنوان الحاله",
                      icon: Icons.gps_fixed_outlined),
                  const SizedBox(
                    height: 10,
                  ),
                  text_field2(
                    title: "تفاصيل الحاله",
                    hint: "اكتب تفاصيل الحاله",
                    maxline: 5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(145, 104, 58, 1))),
                    child: const Text(
                      "ابلاغ الان",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget text_field2({
  required String? title,
  required String? hint,
  IconData? icon,
  int? maxline,
}) {
  return TextField(
    cursorHeight: 20,
    scrollPadding: const EdgeInsets.all(5),
    decoration: InputDecoration(
      prefixIcon: Icon(icon),
      hintStyle: TextStyle(
        color: Colors.black.withOpacity(0.5),
      ),
      hintText: hint,
      labelStyle: const TextStyle(
        color: Color.fromRGBO(145, 104, 58, 1),
        fontSize: 25,
        fontFamily: "Rubik",
        fontWeight: FontWeight.bold,
      ),
      label: Text(title!),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color.fromRGBO(145, 104, 58, 1)),
        borderRadius: BorderRadius.circular(23),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(145, 104, 58, 1),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      hoverColor: const Color.fromRGBO(145, 104, 58, 1),
      focusColor: const Color.fromRGBO(145, 104, 58, 1),
    ),
    maxLines: maxline,
  );
}
