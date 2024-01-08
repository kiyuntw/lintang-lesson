import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Stories',
              style: context.textTheme.headlineMedium,
            ),
            Text(
              'Top stories from all time',
              style: context.textTheme.headlineSmall
                  ?.copyWith(color: ColorConstant.lightGrey),
            ),
            UIHelper.verticalSpace(sectionPadding),
            InkWell(
              onTap: () {
                AutoRouter.of(context).push(const TopStoriesFilterRoute());
              },
              child: Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorConstant.primary,
                    width: 0.5,
                  ),
                  borderRadius: UIHelper.borderRadiusCircular(all: 10),
                ),
                child: Row(
                  children: [
                    Text('Go To Categories Section',
                        style: context.textTheme.labelSmall
                            ?.copyWith(color: ColorConstant.primary))
                  ],
                ),
              ),
            ),
            UIHelper.verticalSpace(sectionPadding),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Most Popular Articles',
                    style: context.textTheme.headlineMedium,
                  ),
                ),
                InkWell(
                  onTap: () {
                    AutoRouter.of(context)
                        .push(const MostPopularArticlesRoute());
                  },
                  child: Text(
                    'See All',
                    style: context.textTheme.headlineMedium
                        ?.copyWith(color: ColorConstant.primary),
                  ),
                )
              ],
            ),
            Text(
              'Top articles from last week',
              style: context.textTheme.headlineSmall
                  ?.copyWith(color: ColorConstant.lightGrey),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: UIHelper.padding(vertical: 10, horizontal: 0),
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
    );
  }
}
