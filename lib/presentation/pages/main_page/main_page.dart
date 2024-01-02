import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/domain/main_page/entities/landing_model.dart';
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_first_page.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/action_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var menuList = Constants.menuList;

    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text(
          'Starting Page',
        ),
      ),
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 10),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: UIHelper.padding(vertical: 10, horizontal: 15),
            child: ActionText(
              title: menuList[index].title,
              desc: menuList[index].desc,
              onTap: () {
                AutoRouter.of(context).push(const DummyUIFirstRoute());
              },
            ),
          ),
          itemCount: menuList.length,
        ),
      ),
    );
  }
}
