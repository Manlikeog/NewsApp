import 'package:flutter/material.dart';
import 'package:news_app/data/models/models.dart';

import '../../utils/utils.dart';

class CategoryCard extends StatelessWidget {
  final NewsModel? news;
  const CategoryCard({Key? key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
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
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  news!.image,
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const XBox(15),
            Container(
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
                      children: [
                        const Icon(
                          Icons.access_time,
                          color: greyColor,
                        ),
                        const XBox(10),
                        const Text('4 Hours ago')
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
