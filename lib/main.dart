import 'package:flutter/material.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: newsTheme,
      home: const NewsCategory(),
      onGenerateRoute: NewsRoute.generateRoute,
    );
  }
}
