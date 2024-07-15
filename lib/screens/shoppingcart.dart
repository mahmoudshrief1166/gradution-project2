import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Text(
            'عربه التسوق',
            style: TextStyle(
                fontFamily: "Tajawal",
                color: Color.fromRGBO(145, 104, 58, 1),
                fontSize: 20),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.only(right: 150),
            child: Icon(
              Icons.shopping_cart_sharp,
              color: Color.fromRGBO(145, 104, 58, 1),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
