import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<CategoryModel> categoryCard = const [
    CategoryModel(
      imageAssetUrl: 'assets/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/entertaiment.avif',
      categoryName: 'Entertainement',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/general.avif',
      categoryName: 'General',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/technology.jpeg',
      categoryName: 'Sechnology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: RichText(
            text: const TextSpan(
              style: TextStyle(
                  fontSize: 24,
                  fontWeight:
                      FontWeight.bold), // Default style for the RichText
              children: <TextSpan>[
                TextSpan(
                  text: 'News',
                  style: TextStyle(color: Colors.black), // Color for 'News'
                ),
                TextSpan(
                  text: ' Cloud',
                  style: TextStyle(
                      color: Color(0xffDBBC84)), // Different color for 'Cloud'
                ),
              ],
            ),
          ),
        ),
        body: CategoryListView(categoryCard: categoryCard),
      ),
    );
  }
}
