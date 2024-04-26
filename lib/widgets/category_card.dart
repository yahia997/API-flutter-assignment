import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/category_model.dart';
import 'package:flutter_application_1/service/news_service.dart';
import 'package:flutter_application_1/views/article.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // to fetch data
        dynamic data = await NewsServies(Dio()).getsNews(category.categoryName);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => Articles(data: data, category: category.categoryName,)));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: AssetImage(category.image)),
          ),
          height: 85,
          width: 150,
          child: Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 181, 181),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
