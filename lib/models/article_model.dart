class ArticlesModel {
  final String? image;
  final String title;
  final String? subTitle;
  ArticlesModel(
      {required this.image, required this.title, required this.subTitle});

  factory ArticlesModel.fromJson(Json) {
    return ArticlesModel(
        image: Json['urlToImage'],
        title: Json['title'],
        subTitle: Json['description']);
  }
}
