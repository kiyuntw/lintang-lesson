import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class MostPopularArticlesPage extends StatelessWidget {
  const MostPopularArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(title: Text('MOST POPULAR ARTICLES')),
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 10),
        child: Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: UIHelper.padding(vertical: 10, horizontal: 0),
              child: NewsCard(
                imgSrc: Constants.dummyImg,
                title: Constants.newsList[index].title,
                desc: Constants.newsList[index].desc,
              ),
            ),
            itemCount: Constants.newsList.length,
          ),
        ),
      ),
    );
  }
}
