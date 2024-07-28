import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import '../services/news_service.dart';
import '../widgets/news_list_view.dart';

// ignore: must_be_immutable
class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  List<ArticlesModel> articles = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(Dio()).getTopHeadLines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListViews(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child:
                    Center(child: Text('oops there was an error, try later')));
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                ),
              ),
            );
          }
        });

    // return isLouding
    //     ? const SliverToBoxAdapter(
    //         child: Center(
    //             child: CircularProgressIndicator(
    //           color: Colors.black,
    //         )),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsListViews(
    //             articles: articles,
    //           )
    //         : const SliverToBoxAdapter(
    //             child:
    //                 Center(child: Text('oops there was an error, try later')));
  }
}
