import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  const NewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: MediaQuery.of(context).size.height / 2 + 100,
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 80,
            child: Container(
              height: MediaQuery.of(context).size.height / 2 - 1,
              width: MediaQuery.of(context).size.width - 70,
              decoration: BoxDecoration(
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(243, 212, 174, 1),
                    blurRadius: 1,

                    blurStyle: BlurStyle.inner,
                    //spreadRadius: -3.0,
                    offset: Offset(0, -25.0),
                  ),
                ],
                color: const Color.fromRGBO(219, 220, 219, 1),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blueGrey[900]!,
                  width: 4,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 90,
                minRadius: 20,
                backgroundImage: Image.network(
                  "https://charity-proj.netlify.app/images/campaign-image.png",
                ).image,
                backgroundColor: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 180,
            child: Column(
              children: [
                const Text(
                  "غذاء للجميع",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Tajawal",
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 80,
                  child: const Text(
                    "وفرلهم احتياجاتهم الاساسيه ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(240, 229, 216, 1),
                  ),
                  width: MediaQuery.of(context).size.width - 120,
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // const SizedBox(width: 30),
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
                    //const SizedBox(width: 10),
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
                    // const SizedBox(width: 30),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
