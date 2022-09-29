import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/data/api/article_repository.dart';
import 'package:news_app/data/models/models.dart';
import 'package:news_app/logic/bloc/news_bloc_bloc.dart';

import '../../../utils/utils.dart';
import '../../widgets/widgets.dart';

class NewsCategory extends StatefulWidget {
  const NewsCategory({super.key});

  @override
  State<NewsCategory> createState() => _NewsCategoryState();
}

class _NewsCategoryState extends State<NewsCategory>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  final CategoryRepository _categoryRepository = CategoryRepository();
  late Future<List<NewsModel>> futureSports =
      _categoryRepository.fetchCategory('sports');
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

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
                const YBox(
                  30,
                ),
                ScaleTransition(
                  scale: _animation,
                  child: const BaseHeaderText(
                    string: NewsString.articleBHeading,
                    fontSize: radius,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const YBox(5),
                const BaseHeaderText(
                  string: NewsString.articleSHeading,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  textColor: greyColor,
                ),
                const YBox(
                  30,
                ),
                const SearchTextField(),
                const YBox(
                  30,
                ),
                const TabBar(
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
                const YBox(
                  10,
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      CategoryView(
                        string: 'general',
                      ),
                      CategoryView(
                        string: 'business',
                      ),
                      CategoryView(
                        string: 'sports',
                      ),
                      CategoryView(
                        string: 'technology',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryView extends StatelessWidget {
  final String string;
  const CategoryView({Key? key, required this.string}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsBlocBloc>(
        create: (context) =>
            NewsBlocBloc(RepositoryProvider.of<CategoryRepository>(context))
              ..add(FetchArticle(category: string)),
        child: BlocConsumer<NewsBlocBloc, NewsBlocState>(
          listener: (context, state) {
            if (state is NewsBlocInitial) {
              const Center(child: Text('Waiting'));
            }
          },
          builder: (context, state) {
            if (state is ErrorState) {
              return showToasterror(state.message);
            } else if (state is LoadedState) {
              return FutureBuilder<List<NewsModel>>(
                future: state.repository,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<NewsModel> articles = snapshot.data!;
                    return ListView.builder(
                      itemCount: articles.length,
                      scrollDirection: Axis.vertical,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, int index) {
                        return CategoryCard(
                          news: articles[index],
                        );
                      },
                    );
                  }

                  return const SizedBox.shrink();
                },
              );
            } else if (state is LoadingState) {}
            return const Center(child: CircularProgressIndicator.adaptive());
          },
        ));
  }
}


// BlocBuilder<NewsBlocBloc, NewsBlocState>(
//                           builder: (context, state) {
//                             if (state is ErrorState) {
//                               return showToasterror(state.message);
//                             } else if (state is LoadedState) {
//                               return FutureBuilder<List<NewsModel>>(
//                                 future: state.repository,
//                                 builder: (context, snapshot) {
//                                   if (snapshot.hasData) {
//                                     List<NewsModel> articles = snapshot.data!;
//                                     return ListView.builder(
//                                       itemCount: articles.length,
//                                       scrollDirection: Axis.vertical,
//                                       physics:
//                                           const AlwaysScrollableScrollPhysics(),
//                                       itemBuilder: (context, int index) {
//                                         return CategoryCard(
//                                           news: articles[index],
//                                         );
//                                       },
//                                     );
//                                   }

//                                   return const SizedBox.shrink();
//                                 },
//                               );
//                             }
//                             return const CircularProgressIndicator();
//                           },
//                         ),