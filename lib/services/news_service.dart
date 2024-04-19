import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  getGeneralNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=a434ce6280304e58bba3274667d9d959&category=general');

    Map<String, dynamic> jasonData = response.data;
  }
}
