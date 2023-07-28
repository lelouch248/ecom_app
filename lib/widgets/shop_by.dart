import 'package:ecom_app/widgets/shop_by_card.dart';
import 'package:flutter/material.dart';

class ShopBy extends StatelessWidget {
  const ShopBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xf7f7f7),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Shop by',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Colors.grey),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ShopByCard(
                    imagePath: 'assets/images/newphone.png',
                    imageDesc: 'Bestselling \n mobiles'),
                ShopByCard(
                    imagePath: 'assets/images/warranty.png',
                    imageDesc: 'Phones with \n warranty'),
                ShopByCard(
                    imagePath: 'assets/images/verified.png',
                    imageDesc: 'Verified \n Devices only'),
                ShopByCard(
                    imagePath: 'assets/images/mobiles.png',
                    imageDesc: 'Like new \nCondition'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
