import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ColoredBox(
        color: Colors.black,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white, // Set the custom search bar background color
            borderRadius: BorderRadius.circular(8),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Icons.search, color: Colors.black),
              border: InputBorder.none, // Remove the default underline
            ),
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
