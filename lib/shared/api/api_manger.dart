import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_apps_2/model/news_respons/NewsResponse.dart';
import 'package:news_apps_2/model/soursess_response/SoursesResponse.dart';

class ApiManger{

  static const String baseUrl = "newsapi.org";
  static const String apiKey = "441d57a48712401494c96ddf2c071053";

  static Future<SoursesResponse> getSourses(String categoryId) async {
    // TODO : https://newsapi.org/v2/top-headlines/sources?apiKey=441d57a48712401494c96ddf2c071053&category=sports
    var url = Uri.https(baseUrl, "/v2/top-headlines/sources",
        {
          "apiKey" : apiKey,
          "category" : categoryId
        });
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    SoursesResponse soursesResponse = SoursesResponse.fromJson(json);
    return soursesResponse;
  }

  static Future<NewsResponse> getNews(String sourceId) async {
    // TODO : https://newsapi.org/v2/everything?apiKey=441d57a48712401494c96ddf2c071053&sources=bbc-news
    var url = Uri.https(baseUrl, "/v2/everything", {
      "apiKey" : apiKey,
      "sources" : sourceId,
    });
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    NewsResponse newsResponse = NewsResponse.fromJson(json);
    return newsResponse;
  }
}