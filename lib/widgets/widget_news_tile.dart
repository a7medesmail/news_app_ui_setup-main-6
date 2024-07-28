import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class WidgetNewsListViews extends StatelessWidget {
  const WidgetNewsListViews({super.key, required this.articlesModel});
final ArticlesModel articlesModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image:  DecorationImage(
              image: NetworkImage(
                  articlesModel.image?? 'https://media.istockphoto.com/id/1311148884/vector/abstract-globe-background.jpg?s=612x612&w=0&k=20&c=9rVQfrUGNtR5Q0ygmuQ9jviVUfrnYHUHcfiwaH5-WFE='),
              fit: BoxFit.cover,
            ),
          ),
        ),
         Text(
          articlesModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
         Text(
          articlesModel.subTitle??'',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
