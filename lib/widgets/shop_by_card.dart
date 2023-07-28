import 'package:flutter/material.dart';

class ShopByCard extends StatelessWidget {
  const ShopByCard(
      {required this.imagePath, super.key, required this.imageDesc});
  final String imagePath;
  final String imageDesc;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 30,
              width: 20,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(
                imageDesc, // Replace with your desired text
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
