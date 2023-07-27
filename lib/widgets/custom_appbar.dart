import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          snap: false,
          pinned: true,
          centerTitle: false,
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
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          ],
          bottom: AppBar(
            title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            const SizedBox(
              height: 400,
              child: Center(
                child: Text(
                  'This is an awesome shopping platform',
                ),
              ),
            ),
            Container(
              height: 1000,
              color: Colors.pink,
            ),
          ]),
        )
      ],
    );
  }
}
