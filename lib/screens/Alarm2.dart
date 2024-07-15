import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Alarm2 extends StatefulWidget {
  const Alarm2({super.key});

  @override
  State<Alarm2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Alarm2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          "تبرع  بالمستعمل",
          style: TextStyle(
            color: Color.fromRGBO(145, 104, 58, 1),
            fontSize: 30,
            fontFamily: "Rubik",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(213, 191, 166, 1),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "assets/images/4.png",
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
          Card(
            margin: const EdgeInsets.all(15),
            elevation: 5,
            color: Theme.of(context).scaffoldBackgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                child: Column(
                  children: [
                    text_field2(
                        title: "الاسم", hint: "اكنب اسمك", icon: Icons.person),
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
                        title: "الحاجة المستعملة",
                        hint: "اكتب اسم الحاجه المستعمله",
                        icon: Icons.subject_outlined),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(145, 104, 58, 1))),
                      child: const Text(
                        "ارسال الان",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Card(
                            child: Image.asset(
                              "assets/images/thing.png",
                              width: 200,
                              height: 200,
                            ),
                          ),
                          Card(
                            child: Image.asset(
                              "assets/images/thing.png",
                              width: 200,
                              height: 200,
                            ),
                          ),
                          Card(
                            child: Image.asset(
                              "assets/images/thing.png",
                              width: 200,
                              height: 200,
                            ),
                          ),
                          Card(
                            child: Image.asset(
                              "assets/images/thing.png",
                              width: 200,
                              height: 200,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
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
