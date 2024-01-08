import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/chip.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class TopStoriesFilterPage extends StatelessWidget {
  const TopStoriesFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(title: Text('Top Stories')),
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("CHOOSE TYPE",
                style: context.textTheme.headlineSmall
                    ?.copyWith(color: ColorConstant.green)),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: <Widget>[
                ChipCustom(
                  title: 'arts',
                  onTap: () {
                    AutoRouter.of(context).push(const TopStoriesRoute());
                  },
                ),
                ChipCustom(
                  title: 'automobiles',
                  onTap: () {
                    AutoRouter.of(context).push(const TopStoriesRoute());
                  },
                ),
                ChipCustom(
                  title: 'food',
                  onTap: () {
                    AutoRouter.of(context).push(const TopStoriesRoute());
                  },
                ),
                ChipCustom(
                  title: 'books/review',
                  onTap: () {
                    AutoRouter.of(context).push(const TopStoriesRoute());
                  },
                ),
                ChipCustom(
                  title: 'movies',
                  onTap: () {
                    AutoRouter.of(context).push(const TopStoriesRoute());
                  },
                ),
                ChipCustom(
                  title: 'sports',
                  onTap: () {
                    AutoRouter.of(context).push(const TopStoriesRoute());
                  },
                ),
                ChipCustom(
                  title: 'politics',
                  onTap: () {
                    AutoRouter.of(context).push(const TopStoriesRoute());
                  },
                ),
                ChipCustom(
                  title: 'fashion',
                  onTap: () {
                    AutoRouter.of(context).push(const TopStoriesRoute());
                  },
                ),
                ChipCustom(
                  title: 'home',
                  onTap: () {
                    AutoRouter.of(context).push(const TopStoriesRoute());
                  },
                ),
                ChipCustom(
                  title: 'business',
                  onTap: () {
                    AutoRouter.of(context).push(const TopStoriesRoute());
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
