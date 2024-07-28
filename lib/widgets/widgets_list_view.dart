import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'item_view.dart';

// ignore: must_be_immutable
class WidgetListView extends StatelessWidget {
  WidgetListView({super.key});
  List<widgetModel> widgetsList = [
    widgetModel(name: 'business', image: 'assets/business.avif'),
    widgetModel(name: 'entertainment', image: 'assets/entertaiment.avif'),
    widgetModel(name: 'general', image: 'assets/general.avif'),
    widgetModel(name: 'health', image: 'assets/health.avif'),
    widgetModel(name: 'science', image: 'assets/science.avif'),
    widgetModel(name: 'sports', image: 'assets/sports.avif'),
    widgetModel(name: 'technology', image: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widgetsList.length,
        itemBuilder: (context, index) {
          return AppWidgets(model: widgetsList[index],);
        },
      ),
    );
  }
}
