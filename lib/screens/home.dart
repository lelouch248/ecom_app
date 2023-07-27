import 'package:ecom_app/widgets/custom_appbar.dart';
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
      // drawer: Drawer(),
      body: const CustomAppBar(),
    );
  }
}
