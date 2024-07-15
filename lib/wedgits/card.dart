import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCard extends StatelessWidget {
  MyCard({
    super.key,
    required String? title,
    required String? firstline,
    required String? secondline,
    required String? thirdline,
    required String? forthline,
    required String? imageurl,
  }) {
    titlee = title;
    firstlinee = firstline;
    secondlinee = secondline;
    thirdlinee = thirdline;
    forthlinee = forthline;

    imageurll = imageurl;
  }

  String? titlee;
  String? firstlinee;
  String? secondlinee;
  String? thirdlinee;
  String? forthlinee;
  String? imageurll;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: const Color.fromRGBO(219, 220, 219, 1),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height / 2 + 100,
          width: MediaQuery.of(context).size.width - 70,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(219, 220, 219, 1),
            borderRadius: BorderRadius.circular(25),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    imageurll!,
                    fit: BoxFit.fill,
                    height: 201,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    titlee!,
                    style: const TextStyle(
                      fontFamily: "Tajawal",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "اضافه النص المراد كتابته ",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                /*
                Text(
                  secondlinee!,
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    decorationThickness: 2.5,
                    color: Colors.red,
                  ),
                ),*/ /*
                Text(
                  thirdlinee!,
                  style: GoogleFonts.cairo(
                    fontSize: 15,
                    decoration: TextDecoration.lineThrough,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: .5,
                    decorationColor: const Color.fromRGBO(148, 185, 75, 1),
                    color: Colors.white,
                  ),
                ),*/ /*
                Text(
                  forthlinee!,
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),*/
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(240, 229, 216, 1),
                    ),
                    width: MediaQuery.of(context).size.width - 80,
                    height: 120,
                    child: Column(
                      children: [
                        Slider(
                          onChanged: (value) {},
                          label: "المبلغ",
                          value: 50,
                          min: 0,
                          max: 100,
                          activeColor: Colors.blueGrey[900],
                          inactiveColor: Colors.grey[500],
                          thumbColor: Colors.blueGrey[900],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "EGP 50,000 ",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Text(
                                "EGP 25,000 ",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Goals ",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Raised ",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 105,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.symmetric(
                          // horizontal: 10,
                          vertical: 7,
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color.fromRGBO(145, 104, 58, 1)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.shopping_cart_sharp,
                          size: 35,
                          color: Color.fromRGBO(145, 104, 58, 1),
                        ),
                      ),
                      // const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                horizontal: 60,
                                vertical: 7,
                              ),
                            ),
                            elevation: MaterialStateProperty.all(3),
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(145, 104, 58, 1),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                // side: const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          child: const Text(
                            "تبرع الان",
                            style: TextStyle(
                              fontFamily: "Tajawal",
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),

                /*
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 8,
                          ),
                        ),
                        elevation: MaterialStateProperty.all(3),
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(31, 44, 57, 1),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color.fromRGBO(148, 185, 75, 1)),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.shopping_cart_sharp,
                        color: Color.fromRGBO(148, 185, 75, 1),
                      ),
                      label: Text(
                        "اضق للسله",
                        style: GoogleFonts.cairo(
                          fontSize: 15,
                          color: const Color.fromRGBO(148, 185, 75, 1),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 28,
                            vertical: 2,
                          ),
                        ),
                        elevation: MaterialStateProperty.all(3),
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(148, 185, 75, 1),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            // side: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      child: Text(
                        "تبرع الان",
                        style: GoogleFonts.cairo(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                )*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
