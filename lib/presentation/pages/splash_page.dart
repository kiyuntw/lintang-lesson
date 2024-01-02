import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/infrastructure/common/landing_model.dart';
import 'package:trinity_lecture_app/presentation/pages/dummy_page.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/action_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Landing> data = [
      Landing(title: "Dummy UI", desc: "Introducing basic flutter widget UI"),
      Landing(
          title: "Counter Example (State Management)",
          desc: "Introducing of state management using flutter_bloc. Level: 1"),
      Landing(
          title: "Input Validation Example (State Management)",
          desc:
              "Flutter state management using flutter_bloc to handle validation in text field. Level: 2"),
      Landing(
          title: "Calculator Example (State Management)",
          desc:
              "Flutter state management using flutter_bloc to calculate simple syntax. Level: 3"),
      Landing(
          title: "News App",
          desc: "API calling using free source from NYTimes"),
      Landing(
          title: "To Do App",
          desc:
              "Create a to do list that saved in local storage using hydrated_bloc. Level: 4"),
    ];

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
                title: data[index].title,
                desc: data[index].desc,
                onTap: () {
                  AutoRouter.of(context).push(const DummyRoute());
                },
              ),
            ),
            itemCount: data.length,
          )),
    );
  }
}
