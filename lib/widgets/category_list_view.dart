import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
    required this.categoryCard,
  });

  final List<CategoryModel> categoryCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categoryCard[index],
          );
        },
        itemCount: categoryCard.length,
      ),
    );
  }
}
