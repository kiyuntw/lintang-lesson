import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trinity_lecture_app/core/commons/assets_path.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionPadding = 20;
    return Scaffold(
      appBar: const PlatformAppBar(title: Text('Counter App')),
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 10),
        child: const Center(
          child: Text('0'),
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: SvgPicture.asset(AssetsPath.plusIcon),
          ),
          UIHelper.verticalSpace(sectionPadding),
          FloatingActionButton(
            onPressed: () {},
            child: SvgPicture.asset(AssetsPath.minusIcon),
          ),
        ],
      ),
    );
  }
}
