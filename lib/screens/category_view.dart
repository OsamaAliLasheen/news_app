import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          category,
          style: const TextStyle(
              color: Color(0xffDBBC84), fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
