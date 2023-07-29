import 'package:flutter/material.dart';
import 'package:ecom_app/screens/search.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key, required this.screenCount}) : super(key: key);
  final int screenCount;
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var pageNo = widget.screenCount;
    if (pageNo == 0) {
      return Center(
        child: ColoredBox(
          color: Colors.black,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search, color: Colors.black),
                border: InputBorder.none,
              ),
              style: const TextStyle(color: Colors.black),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchScreen(),
                  ),
                );
              },
            ),
          ),
        ),
      );
    }
    return Center(
      child: ColoredBox(
        color: pageNo != 0 ? Colors.white : Colors.black,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Icons.search, color: Colors.black),
              border: InputBorder.none,
            ),
            style: const TextStyle(color: Colors.black),
            onChanged: (searchText) {
              // Navigate to the SearchScreen when search is submitted
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
