import 'package:flutter/material.dart';
import 'package:mealsapp/data/dummy_data.dart';
import 'package:mealsapp/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your Category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          /*
            Option 1: 
            Define it outside the children list
            availableCategories.map((category) => CategoryGridItem(category: category)).toList()
          */

          /*
            Option 2:
            Use the spread operator
          */
          ...availableCategories
              .map((category) => CategoryGridItem(category: category)),

          /*
            Option 3:
            Use a for loop
            for (final category in availableCategories)
                CategoryGridItem(category: category),
          */
        ],
      ),
    );
  }
}
