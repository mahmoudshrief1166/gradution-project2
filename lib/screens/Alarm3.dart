import 'package:flutter/material.dart';

class Alarm3 extends StatefulWidget {
  const Alarm3({super.key});

  @override
  State<Alarm3> createState() => _Alarm3State();
}

class _Alarm3State extends State<Alarm3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "قنوات التبرع",
          style: TextStyle(
            color: Color.fromRGBO(145, 104, 58, 1),
            fontSize: 30,
            fontFamily: "Rubik",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "assets/images/5.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            " تبرع بالمال",
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
                    text_field3(
                        title: "الاسم", hint: "اكنب اسمك", icon: Icons.person),
                    const SizedBox(
                      height: 10,
                    ),
                    text_field3(
                        title: "العنوان",
                        hint: "اكتب عنوانك",
                        icon: Icons.gps_fixed_outlined),
                    const SizedBox(
                      height: 10,
                    ),
                    text_field3(
                        title: "التليفون",
                        hint: "رقم التليفون",
                        icon: Icons.phone),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "اختر جمعيه",
                          style: TextStyle(
                            color: Color.fromRGBO(145, 104, 58, 1),
                            fontSize: 30,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        DropdownMenu(
                          label: Text("اختر "),
                          dropdownMenuEntries: [
                            DropdownMenuEntry(
                                value: "جمعيه 1", label: "جمعيه 1"),
                            DropdownMenuEntry(
                                value: "جمعيه 2", label: "جمعيه 2"),
                            DropdownMenuEntry(
                                value: "جمعيه 3", label: "جمعيه 3"),
                          ],
                          // menuHeight: 200,
                        ),
                      ],
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
                        "ارسال الان",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget text_field3({
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
