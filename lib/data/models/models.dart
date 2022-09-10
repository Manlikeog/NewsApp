import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';

@JsonSerializable(createToJson: false)
class NewsModel {
  // model to inject into UI data
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? description;
  String? url;
  DateTime? publishedAt;

  // these are getters
  String get authorName => author ?? '';
  String get titleName => title ?? '';
  String get descriptionName => description ?? '';
  String get contentA => content ?? '';

  String get image =>
      urlToImage ??
      'https://cdn.pixabay.com/photo/2016/02/01/00/56/news-1172463__480.jpg';

  NewsModel(
      {this.title,
      this.author,
      this.content,
      this.urlToImage,
      this.description,
      this.publishedAt,
      this.url});

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}
