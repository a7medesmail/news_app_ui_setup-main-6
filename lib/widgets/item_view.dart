import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

import '../views/categoryView.dart';

// ignore: must_be_immutable
class AppWidgets extends StatelessWidget {
  AppWidgets({super.key, required this.model});
  widgetModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return  CategoryView(category:model.name );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          height: 85,
          width: 160,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(model.image),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(
            model.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
