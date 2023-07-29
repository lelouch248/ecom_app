import 'package:ecom_app/screens/deals.dart';
import 'package:ecom_app/widgets/carousel_slider.dart';
import 'package:ecom_app/widgets/custom_search.dart';
import 'package:ecom_app/widgets/shop_by.dart';
import 'package:ecom_app/widgets/top_brands.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset(
            'assets/images/oruphone.png',
            height: 50,
            color: Colors.white,
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            // gotta make the location dynamic
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.location_pin,
                color: Colors.white,
              ),
              label: const Text(
                'India',
                style: TextStyle(color: Colors.white),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
              color: Colors.white,
            ),
          ]),
      drawer: const Drawer(),
      body: ListView(
        shrinkWrap: true,
        children: const [
          SearchBar(),
          TopBrands(),
          SizedBox(height: 150, child: CarouselWithButtons()),
          ShopBy(),
          Deals(),
        ],
      ),
    );
  }
}
