import 'package:ecom_app/widgets/custom_search.dart';

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isSearchBarFocused = false;
  @override
  Widget build(BuildContext context) {
    // Replace the example list with your actual searchable items list
    List<String> searchableItems = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("search screen"),
      ),
      body: Column(
        children: [
          const SearchBar(
            screenCount: 1,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchableItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchableItems[index]),
                  onTap: () {
                    // Handle the tap on a searchable item
                    // For example, you can navigate to a details page here
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
