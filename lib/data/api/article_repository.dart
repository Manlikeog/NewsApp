import 'package:news_app/data/api/apicall.dart';
import 'package:news_app/data/models/models.dart';

class CategoryRepository {
  Future<List<NewsModel>> fetchCategory(String articleCategory) async {
    final String url =
        'https://newsapi.org/v2/top-headlines?country=us&category=$articleCategory';
    ApiCall category = ApiCall(url: url, headers: {
      "Authorization": "eb0edd27452c49b1a4787edb127942be",
      "Content-Type": "application/json",
    });
    var categoryData = await category.getNewsData();
    return categoryData;
  }
}
