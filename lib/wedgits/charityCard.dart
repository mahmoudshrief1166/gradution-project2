import 'package:flutter/material.dart';

class CharityCard extends StatelessWidget {
  CharityCard({
    super.key,
    required String? imageurl,
  }) {
    imageurll = imageurl;
  }

  String? imageurll;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 600,
        child: Column(
          children: [
            Card(
              color: const Color.fromRGBO(219, 220, 219, 1),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.width - 70,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(219, 220, 219, 1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    imageurll!,
                    fit: BoxFit.fill,
                    height: 201,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
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
                "تبرع الآن",
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
    );
  }
}
