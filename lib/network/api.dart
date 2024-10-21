import 'package:dio/dio.dart';
import 'package:untitled1/model/article.dart';
import 'package:untitled1/model/category.dart';

class api_Services{
  getNews()async{
    Dio dio = Dio();
    var response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=e580633063704c459f191ed0c4b09fad");
    var json = response.data;
    List<Article> articles=[];
    List s=json['articles'];
    for(var item in s){
      articles.add(Article(title: s[item]['title'], description:s[item]['description'], urlToImage:s[item]['urlToImage'] , url: s[item]['url'], author: s[item]['author'], date: s[item]['publishedAt']));
    }

  }
  
  
  
}