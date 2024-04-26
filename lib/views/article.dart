import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/news_tile.dart';

class Articles extends StatelessWidget {
  const Articles({super.key, required this.data, required this.category});
  final List data;
  final String category;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(category),
        ),
        body: ListView(
          children: data.map((e) => NewsTile(
            description: e['description']??"",
            img: e['urlToImage']??"https://picsum.photos/id/237/200/300",
            title: e['title']??"There is no title :)",
            author: e['author']??"Author is unknown",
            publishedAt: e['publishedAt']??"publishedAt is unknown",
            content: e['content']??"There is content :)",
          )).toList(),
        ),
      ),
    );
  }
}
