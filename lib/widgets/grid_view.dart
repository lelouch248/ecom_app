import 'package:flutter/material.dart';
import 'package:ecom_app/widgets/item_card.dart';
import 'package:ecom_app/data/listing.dart';
import 'package:ecom_app/screens/filter_modal.dart';

class GridViewItems extends StatefulWidget {
  const GridViewItems({Key? key, required this.selectedFilters});

  final Map<String, List<dynamic>> selectedFilters;

  @override
  State<GridViewItems> createState() => _GridViewItemsState();
}

class _GridViewItemsState extends State<GridViewItems> {
  List filteredItems = phones; // Initialize with all phones

  @override
  Widget build(BuildContext context) {
    filteredItems = phones.where((phone) {
      final make = phone.make;
      final condition = phone.deviceCondition;
      final storage = phone.deviceStorage;
      final ram = phone.deviceRam;

      if (widget.selectedFilters.containsKey('make') &&
          !widget.selectedFilters['make']!.contains(make)) {
        return false;
      }

      if (widget.selectedFilters.containsKey('condition') &&
          !widget.selectedFilters['condition']!.contains(condition)) {
        return false;
      }

      if (widget.selectedFilters.containsKey('storage') &&
          !widget.selectedFilters['storage']!.contains(storage)) {
        return false;
      }

      if (widget.selectedFilters.containsKey('ram') &&
          !widget.selectedFilters['ram']!.contains(ram)) {
        return false;
      }

      return true;
    }).toList();

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemCount: filteredItems.length,
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        
        // Render the card here
        return ItemCard(
          imageURL: item.defaultImage['fullImage']!,
          phoneModel: item.model,
          price: item.listingNumPrice.toString(),
          storage: item.deviceStorage,
          condition: item.deviceCondition,
          location: item.listingLocation,
          date: item.listingDate,
        );
      },
    );
  }
}
