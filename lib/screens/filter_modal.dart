import 'package:flutter/material.dart';

class FilterModal extends StatelessWidget {
  final Map<String, List<String>> filters;
  final Map<String, List<dynamic>> selectedFilters;
  final void Function(Map<String, List<dynamic>> selectedFilters)
      onApplyFilters;

  const FilterModal({
    Key? key,
    required this.filters,
    required this.selectedFilters,
    required this.onApplyFilters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Select Filters',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: filters.keys.length,
              itemBuilder: (context, index) {
                final filterKey = filters.keys.elementAt(index);
                final filterOptions = filters[filterKey] ?? [];
                final selectedOptions =
                    selectedFilters[filterKey] ?? List<dynamic>.empty();

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      filterKey,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Wrap(
                      spacing: 8,
                      children: filterOptions.map((option) {
                        final isSelected = selectedOptions.contains(option);
                        return FilterChip(
                          label: Text(option),
                          selected: isSelected,
                          onSelected: (isSelected) {
                            final updatedOptions =
                                List<String>.from(selectedOptions);
                            if (isSelected) {
                              updatedOptions.add(option);
                            } else {
                              updatedOptions.remove(option);
                            }
                            onApplyFilters({
                              ...selectedFilters,
                              filterKey: updatedOptions,
                            });
                          },
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  onApplyFilters({}); // Clear all filters
                },
                child: Text('Clear Filters'),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Apply Filters'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
