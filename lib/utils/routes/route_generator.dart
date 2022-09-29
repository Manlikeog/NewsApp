import 'package:flutter/material.dart';
import 'package:news_app/interface/pages/article/article.dart';
import 'package:news_app/interface/pages/category/category.dart';

import 'package:news_app/utils/routes/route_names.dart';

class NewsRoute {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case categoryRoute:
        return MaterialPageRoute(
          builder: (_) => const NewsCategory(),
        );
      case articleRoute:
        return MaterialPageRoute(
          builder: (_) => const NewsArticle(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('No route found'),
            ),
            body: Center(
              child: Text(
                'No route defined for ${routeSettings.name}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
    }
  }
}

const List<String> bottomNavRoutes = [
  'Home',
  '/favoritesRoute',
  '/accountRoute',
  '/historyRoute',
];
