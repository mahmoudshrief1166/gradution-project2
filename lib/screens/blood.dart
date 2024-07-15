import 'package:flutter/material.dart';

class Blood extends StatelessWidget {
  const Blood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(45, 62, 78, 1),
        elevation: 0,
        title: const Text(
          'تبرع بالدم',
          style: TextStyle(
              fontFamily: "Tajawal",
              color: const Color.fromARGB(255, 130, 187, 160),
              fontSize: 20),
        ),
      ),
      backgroundColor: const Color.fromRGBO(45, 62, 78, 1),
    );
  }
}
