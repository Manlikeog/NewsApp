import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class NewsArticle extends StatelessWidget {
  const NewsArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Image.asset(
              'assets/images/blurblue.png',
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: verticalPadding - 20),
              decoration: BoxDecoration(
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
                                CircleAvatar(
                                  child: Icon(
                                    Icons.person,
                                    color: blackColor,
                                  ),
                                  backgroundColor: bgColor,
                                ),
                                XBox(10),
                                Expanded(
                                  child: BaseHeaderText(
                                    string: 'kmdmd ddj ghjvv',
                                    textColor: whiteColor,
                                    maxlines: 1,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        XBox(10),
                        Container(
                          width: 110,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius + 20),
                            color: bgColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  child: Icon(
                                    Icons.person,
                                    color: blackColor,
                                  ),
                                  backgroundColor: bgColor,
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
                    YBox(30),
                    BaseHeaderText(
                      string: 'lol',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
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
