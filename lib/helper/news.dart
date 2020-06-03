import 'dart:convert';

import 'package:news360/model/article_model.dart';
import 'package:http/http.dart' as http;
class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async{
    String url = 'http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=7f8b47e89b554e16883411572ad070be';

    var response = await http.get(url);
    var jsonData = json.decode(response.body);
    if(jsonData['status'] == 'ok'){
      jsonData['articles'].foreach((element){

      });
    }
  }
}