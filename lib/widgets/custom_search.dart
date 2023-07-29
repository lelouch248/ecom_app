import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ecom_app/screens/search.dart';
import 'package:http/http.dart' as http;

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  builder: (context) => const SearchScreen(
                    searchResult: [],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}


class SearchScreenBar extends StatefulWidget {
  const SearchScreenBar({Key? key, required this.onSubmit}) : super(key: key);

  final void Function(List searchResult) onSubmit;

  @override
  _SearchScreenBarState createState() => _SearchScreenBarState();
}

class _SearchScreenBarState extends State<SearchScreenBar> {
  final TextEditingController _searchController = TextEditingController();
  List<dynamic> searchResult = []; // Initialize as an empty list

  final url = Uri.parse(
      'https://dev2be.oruphones.com/api/v1/global/assignment/searchModel');

  void _onChange(value) async {
    final response = await http.post(url, body: {'searchModel': value});
    setState(() {
      searchResult = jsonDecode(response.body)['models'];
    });
    widget.onSubmit(searchResult);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ColoredBox(
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            controller: _searchController,
            autofocus: true,
            decoration: const InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),
            style: const TextStyle(color: Colors.black),
            onChanged: _onChange,
            onSubmitted: (value) {
              widget.onSubmit(searchResult);
            },
          ),
        ),
      ),
    );
  }
}
