import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/utils.dart';
import '../../widgets/widgets.dart';

class NewsCategory extends StatelessWidget {
  const NewsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(horizontalPadding),
              child: Icon(
                Icons.menu,
                size: radius,
                color: newsTheme.primaryColor,
              ),
            ),
            backgroundColor: newsTheme.scaffoldBackgroundColor,
            elevation: 0,
          ),
          body: Padding(
            padding: pagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                YBox(
                  30,
                ),
                BaseHeaderText(
                  string: NewsString.articleBHeading,
                  fontSize: radius,
                  fontWeight: FontWeight.w900,
                ),
                YBox(5),
                BaseHeaderText(
                  string: NewsString.articleSHeading,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  textColor: greyColor,
                ),
                YBox(
                  30,
                ),
                SearchTextField(),
                YBox(
                  30,
                ),
                TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(
                      text: NewsString.general,
                    ),
                    Tab(
                      text: NewsString.business,
                    ),
                    Tab(
                      text: NewsString.sports,
                    ),
                    Tab(
                      text: NewsString.search,
                    ),
                  ],
                ),
                YBox(
                  10,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      CategoryCard(),
                      Card(
                        child: Row(
                          children: [Image.asset('assets/images/blurblue.png')],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: [Image.asset('assets/images/blurblue.png')],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: [Image.asset('assets/images/blurblue.png')],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
