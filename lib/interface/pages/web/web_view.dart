import 'dart:io';
import 'package:flutter/material.dart';
import 'package:news_app/data/models/models.dart';
import 'package:news_app/utils/utils.dart';

import 'package:webview_flutter/webview_flutter.dart';

class NewsWeb extends StatefulWidget {
  final NewsModel? news;
  const NewsWeb({Key? key, this.news}) : super(key: key);

  @override
  State<NewsWeb> createState() => _NewsWebState();
}

class _NewsWebState extends State<NewsWeb> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = AndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    // provider bool value for theme preference

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  iconSize: 19,
                  color: blackColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                const BaseHeaderText(
                  string: 'Web View',
                  fontSize: 15,
                )
              ],
            ),
            Expanded(
              child: Stack(
                children: [
                  WebView(
                    initialUrl: widget.news!.url,
                    javascriptMode: JavascriptMode.unrestricted,
                    onPageFinished: (finish) => setState(() {
                      isLoading = false;
                    }),
                  ),
                  isLoading
                      ? const Center(
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : Stack(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
