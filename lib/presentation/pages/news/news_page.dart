import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionPadding = 20;
    const double horizontalOperationMargin = 10;

    return Scaffold(
      appBar: const PlatformAppBar(title: Text('News Page')),
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Top Stories'),
              Text('Top stories from all time'),
              Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorConstant.lightBlue,
                    width: 0.5,
                  ),
                  borderRadius: UIHelper.borderRadiusCircular(all: 10),
                ),
                child: const Row(
                  children: [
                    Text(
                      'Go To Categories Section',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
              const Row(
                children: [
                  Text('Most Popular Articles'),
                  Text('See All'),
                ],
              ),
              Text('Top articles from last week'),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: UIHelper.padding(vertical: 10, horizontal: 15),
                    child: NewsCard(
                      imgSrc: Constants.dummyImg,
                      title: Constants.newsList[index].title,
                      desc: Constants.newsList[index].desc,
                    ),
                  ),
                  itemCount: 3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
