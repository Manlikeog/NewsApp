import 'package:flutter/material.dart';
import 'package:news_app/utils/utils.dart';

class NewsString {
  static const String articleBHeading = 'Discover';
  static const String articleSHeading = 'News from all over the world';
  static const String search = 'Search';
  static const String time = 'hours ago';
  static const String newoftheday = 'News of the day';
  static const String breakingNews = 'Breaking News';
  static const String more = 'more';
}

class BaseHeaderText extends StatelessWidget {
  final double? fontSize;
  final String string;
  final Color? textColor;
  final FontWeight? fontWeight;
  const BaseHeaderText({
    Key? key,
    required this.string,
    this.fontSize,
    this.textColor,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      string,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor ?? newsTheme.primaryColor,
      ),
    );
  }
}
