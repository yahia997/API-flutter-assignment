import 'package:flutter/material.dart';

class SingleArticle extends StatelessWidget {
  const SingleArticle(
      {super.key,
      required this.img,
      required this.author,
      required this.content,
      required this.description,
      required this.publishedAt,
      required this.title});
  final String img, author, content, description, publishedAt, title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Image(
                image: NetworkImage(img),
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Center(
                  child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
              Column(
                children: [
                  Text(author, style: const TextStyle(fontSize: 17),),
                  Text(publishedAt, style: const TextStyle(fontSize: 17),),
                ],
              ),
              const Text(
                "Summary",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                description,
                style: const TextStyle(fontSize: 16),
              ),
              const Text(
                "Body",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                content,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
