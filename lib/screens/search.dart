import 'package:ecom_app/widgets/custom_search.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  final List<dynamic> searchResult;

  const SearchScreen({super.key, required this.searchResult});
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isSearchBarFocused = false;
  var searchableItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchScreenBar(
          onSubmit: (searchResult) {
            setState(() {
              searchableItems = searchResult;
            });
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: searchableItems.length,
              itemBuilder: (context, index) {
                print(searchableItems[index]);
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
