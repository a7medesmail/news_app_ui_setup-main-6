// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/services/news_service.dart';
// import '../models/article_model.dart';
// import 'widget_news_tile.dart';

// // build state...
// class NewsListViews extends StatefulWidget {
//   const NewsListViews({super.key});

//   @override
//   State<NewsListViews> createState() => _NewsListViewsState();
// }

// // state object...
// class _NewsListViewsState extends State<NewsListViews> {
//   List<ArticlesModel> articles = [];
//   bool isLouding = true;
//   @override
//   void initState() {
//     super.initState();
   
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsServices(Dio()).getHttp();
//     isLouding = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 22),
//                   child: WidgetNewsListViews(
//                     articlesModel: articles[index],
//                   ),
//                 );
//               },
//             ),
//           );
//   }
// }
// // ListView.builder(
// //     shrinkWrap: true,
// //     physics: const NeverScrollableScrollPhysics(),
// //     itemCount: 10,
// //     itemBuilder: (context, index) {
// //       return const Padding(
// //         padding: EdgeInsets.only(bottom: 12),
// //         child: WidgetNewsListViews(),
// //       );
// //     },
// //   );