import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/models/models.dart';

import '../../../utils/utils.dart';
import '../web/web_view.dart';

class NewsArticle extends StatefulWidget {
  final NewsModel? newsModel;
  const NewsArticle({
    super.key,
    this.newsModel,
  });

  @override
  State<NewsArticle> createState() => _NewsArticleState();
}

class _NewsArticleState extends State<NewsArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(children: [
              CachedNetworkImage(
                height: double.infinity,
                imageUrl: widget.newsModel!.image,
                errorWidget: (context, url, widget) =>
                    const Center(child: Icon(Icons.error)),
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    iconSize: 30,
                    color: whiteColor,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: verticalPadding - 20),
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(radius),
                  topRight: Radius.circular(radius),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(radius),
                              color: blackColor),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: bgColor,
                                  child: Icon(
                                    Icons.person,
                                    color: blackColor,
                                  ),
                                ),
                                const XBox(10),
                                Expanded(
                                  child: BaseHeaderText(
                                    string: widget.newsModel!.authorName == ''
                                        ? 'No Name'
                                        : widget.newsModel!.authorName,
                                    textColor: Colors.white,
                                    maxlines: 1,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const XBox(10),
                        Container(
                          width: 90,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius + 20),
                            color: bgColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  Icons.person,
                                  color: blackColor,
                                ),
                                XBox(10),
                                Expanded(
                                  child: BaseHeaderText(
                                    string: '2h',
                                    textColor: blackColor,
                                    maxlines: 1,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const YBox(30),
                    BaseHeaderText(
                      string: widget.newsModel!.title == ''
                          ? 'No Title'
                          : 'Title: ${widget.newsModel!.title}',
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const YBox(30),
                    BaseHeaderText(
                      string: widget.newsModel!.contentA == ''
                          ? 'No content'
                          : widget.newsModel!.contentA,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.fade,
                    ),
                    const YBox(20),
                    Row(
                      children: [
                        const BaseHeaderText(
                          string: 'Continue Reading',
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                        const XBox(10),
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return NewsWeb(
                                  news: widget.newsModel,
                                );
                              },
                            ),
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(right: 15),
                            width: 81,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: blackColor),
                            child: const Center(
                              child: Text(
                                'Web View',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: whiteColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
