import 'package:flutter/material.dart';
import 'package:ecom_app/widgets/item_card.dart';
import 'package:ecom_app/data/listing.dart';

class GridViewItems extends StatelessWidget {
  const GridViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneItems = phones;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemCount: phoneItems.length,
      itemBuilder: (context, index) {
        return ItemCard(
          imageURL: phoneItems[index].defaultImage['fullImage']!,
          phoneModel: phoneItems[index].model,
          price: phoneItems[index].listingNumPrice.toString(),
          storage: phoneItems[index].deviceStorage,
          condition: phoneItems[index].deviceCondition,
          location: phoneItems[index].listingLocation,
          date: phoneItems[index].listingDate,
        );
      },
    );
  }
}
