import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/newsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: category)
          ],
        ),
      ),
    ); 
  }
}