import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Single_article.dart';

class NewsTile extends StatelessWidget {
  const NewsTile(
      {super.key,
      required this.img,
      required this.description,
      required this.title, 
      required this.author, 
      required this.content, 
      required this.publishedAt,
    });
  final String img, author, content, description, publishedAt, title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => SingleArticle(img: img, description: description, author: author,title: title,content: content,publishedAt: publishedAt,)));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image(
                image: NetworkImage(img),
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              description,
              maxLines: 2,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
