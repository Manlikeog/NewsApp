import 'package:flutter/material.dart';
import 'package:news_app/data/models/models.dart';
import 'package:news_app/interface/pages/article/article.dart';

import '../../utils/utils.dart';

class CategoryCard extends StatelessWidget {
  final NewsModel? news;
  const CategoryCard({Key? key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return NewsArticle(
                newsModel: news,
              );
            },
          ),
        );
      }),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 12,
          bottom: 7,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                news!.image,
                height: 100,
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
            const XBox(15),
            SizedBox(
              height: 100,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BaseHeaderText(
                    string: news!.descriptionName,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    maxlines: 2,
                  ),
                  const YBox(20),
                  Expanded(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.access_time,
                          color: greyColor,
                        ),
                        XBox(10),
                        Text('4 Hours ago')
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
