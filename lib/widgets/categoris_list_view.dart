import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/category_model.dart';
import 'package:flutter_application_1/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'business', image: 'assets/buss.jpg'),
    CategoryModel(
        categoryName: 'Entertaiment', image: 'assets/entertaiment.jpg'),
    CategoryModel(categoryName: 'Genral', image: 'assets/genral.jpg'),
    CategoryModel(categoryName: 'Health', image: 'assets/health.jpg'),
    CategoryModel(categoryName: 'Science', image: 'assets/science.jpg'),
    CategoryModel(categoryName: 'Sports', image: 'assets/sports.jpg'),
    CategoryModel(categoryName: 'Technolgy', image: 'assets/tech.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
