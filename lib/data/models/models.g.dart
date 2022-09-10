// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel(
      title: json['title'] as String?,
      author: json['author'] as String?,
      content: json['content'] as String?,
      urlToImage: json['urlToImage'] as String?,
      description: json['description'] as String?,
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      url: json['url'] as String?,
    );
