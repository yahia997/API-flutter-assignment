import 'package:dio/dio.dart';

class NewsServies {
  final Dio dio;

  NewsServies(this.dio);

  dynamic getsNews(searchKeyword) async {
    // get date to get updated news of throw last month and not to generate error if date is old
    String date =
        "${DateTime.now().year}-${DateTime.now().month - 1}-${DateTime.now().day}";

    String url =
        "https://newsapi.org/v2/everything?q=$searchKeyword&from=$date&sortBy=publishedAt&apiKey=2f02cb6834ce4285a80ac14a2193e704";
    Response response = await dio.get(url);
    Map<String, dynamic> jsondata = response.data;
    List<dynamic> articles = jsondata['articles'];

    return articles;
  }
  
}
