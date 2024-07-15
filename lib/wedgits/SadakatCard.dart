import 'package:flutter/material.dart';

class SadakaCard extends StatelessWidget {
  SadakaCard({
    super.key,
    required String? title,
    required String? imageurl,
    required String? lable,
  }) {
    titlee = title;
    imageurll = imageurl;
    lablee = lable;
  }

  String? titlee;
  String? imageurll;
  String? lablee;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          // height: height,
          width: MediaQuery.of(context).size.width - 70,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(31, 44, 57, 1),
            borderRadius: BorderRadius.circular(25),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    imageurll!,
                    fit: BoxFit.fill,
                    //height: height,
                    width: double.infinity,
                  ),
                ),
                Text(
                  titlee!,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: width / 7,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    lablee!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "Tajawal",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 10,
                      ),
                    ),
                    elevation: MaterialStateProperty.all(3),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.green,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                  child: const Text(
                    "دفع صدقة",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontSize: 18,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
