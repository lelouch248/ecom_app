import 'package:ecom_app/widgets/grid_view.dart';
import 'package:flutter/material.dart';
import 'package:ecom_app/widgets/item_card.dart';
import 'package:ecom_app/screens/filter_modal.dart';

class Deals extends StatefulWidget {
  const Deals({super.key});

  @override
  State<Deals> createState() => _DealsState();
}

class _DealsState extends State<Deals> {
  Map<String, List<dynamic>> selectedFilters = {};

  final Map<String, List<String>> filters = {
    "make": ["Apple", "OnePlus", "Samsung", "Xiaomi", "Realme", "Vivo"],
    "condition": ["Like New", "Excellent", "Good", "Fair", "Needs Repair"],
    "storage": ["32 GB", "64 GB", "128 GB", "256 GB", "512 GB", "1 TB"],
    "ram": [
      "4 GB",
      "6 GB",
      "8 GB",
      "12 GB",
      "16 GB",
      "32 GB",
      "64 GB",
      "128 GB"
    ],
  };
  void _onApplyFilters(Map<String, List<dynamic>> selectedFilters) {
    setState(() {
      this.selectedFilters = selectedFilters;
    });
    Navigator.pop(context); // Close the filter modal
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Best Deals Near you',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => FilterModal(
                      filters: filters,
                      selectedFilters: selectedFilters,
                      onApplyFilters: _onApplyFilters,
                    ),
                  );
                },
                icon: const Icon(Icons.filter_alt),
                label: const Text('Filter'),
              )
            ],
          ),
          const SizedBox(height: 10),
          GridViewItems(
            selectedFilters: selectedFilters,
          )
        ],
      ),
    );
  }
}
