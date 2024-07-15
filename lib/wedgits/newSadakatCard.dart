import 'package:flutter/material.dart';

class NewSadakatCard extends StatelessWidget {
  NewSadakatCard(
      {super.key,
      required String CardText,
      required String CardTitle,
      required Color ShadowCalar,
      required String Imagepath}) {
    cardText = CardText;
    cardTitle = CardTitle;
    shadowCalar = ShadowCalar;
    imagepath = Imagepath;
  }

  String? cardText;
  String? imagepath;
  String? cardTitle;
  Color? shadowCalar;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(8),
      height: height,
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        //color: const Color.fromRGBO(244, 244, 244, 1),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: width / 12,
            child: Container(
              height: height / 2 - 130,
              width: width - 70,
              decoration: BoxDecoration(
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(243, 212, 174, 1),
                    blurRadius: .5,

                    blurStyle: BlurStyle.inner,
                    //spreadRadius: -3.0,
                    offset: Offset(0, 25.0),
                  ),
                ],
                color: const Color.fromRGBO(244, 244, 244, 1),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: MediaQuery.of(context).size.width / 2 - 95,
            child: CircleAvatar(
              maxRadius: 50,
              minRadius: 20,
              backgroundColor: shadowCalar!,
            ),
          ),
          Positioned(
            top: 12,
            right: MediaQuery.of(context).size.width / 2 - 85,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                maxRadius: 50,
                minRadius: 20,
                backgroundImage: Image.asset(
                  imagepath!,
                  fit: BoxFit.scaleDown,
                ).image,
                backgroundColor: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 110,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    cardTitle!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "Tajawal",
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 15.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 95,
                      child: Text(
                        cardText!,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.clip,
                        maxLines: 5,
                        style: const TextStyle(
                          fontFamily: "Tajawal",
                          fontSize: 22,
                          height: 1.65,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 71,
            right: MediaQuery.of(context).size.width / 2 - 73,
            child: const CircleAvatar(
              maxRadius: 35,
              minRadius: 20,
              backgroundColor: Colors.black,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 70,
            right: MediaQuery.of(context).size.width / 2 - 70,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: InkWell(
                onTap: () {
                  print("taped");
                },
                child: CircleAvatar(
                  maxRadius: 35,
                  minRadius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.deepPurple[900],
                    size: 30,
                    weight: .5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
