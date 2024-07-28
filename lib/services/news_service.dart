import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
  Future<List<ArticlesModel>> getTopHeadLines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=3c88955c487e4d9db668f011dd85e737&country=us&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticlesModel> articlesList = [];

      for (var article in articles) {
        ArticlesModel articleModel = ArticlesModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return (articlesList);
    } catch (e) {
      return [];
    }
  }
}
