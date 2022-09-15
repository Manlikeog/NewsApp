import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/data/api/article_repository.dart';
import 'package:news_app/interface/pages/article/article.dart';
import 'package:news_app/interface/pages/category/category.dart';

import 'utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => CategoryRepository(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: newsTheme,
        home: const NewsCategory(),
        onGenerateRoute: NewsRoute.generateRoute,
      ),
    );
  }
}
