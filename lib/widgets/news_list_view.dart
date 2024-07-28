import 'package:flutter/material.dart';
import '../models/article_model.dart';
import 'widget_news_tile.dart';

class NewsListViews extends StatelessWidget {
  final List<ArticlesModel> articles ;

  const NewsListViews({super.key,required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: WidgetNewsListViews(
              articlesModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}

// ListView.builder(
//     shrinkWrap: true,
//     physics: const NeverScrollableScrollPhysics(),
//     itemCount: 10,
//     itemBuilder: (context, index) {
//       return const Padding(
//         padding: EdgeInsets.only(bottom: 12),
//         child: WidgetNewsListViews(),
//       );
//     },
//   );