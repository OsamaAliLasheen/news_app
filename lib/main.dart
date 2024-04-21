import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/screens/home_page.dart';
import 'package:news_app_ui_setup/services/news_service.dart';

void main() {
  NewsService(Dio()).getGeneralNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
