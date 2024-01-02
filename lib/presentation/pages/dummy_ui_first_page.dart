import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/action_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/required_text.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/dummy_container_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/text_form_field.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class DummyUIFirstPage extends StatelessWidget {
  const DummyUIFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionPadding = 20;

    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text(
          'Dummy UI',
        ),
      ),
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ActionText(
                  onTap: () {
                    AutoRouter.of(context).push(const DummyUISecondRoute());
                  },
                  title: "Next",
                  desc: "Tab Bar, GridView, ListView"),
              Text("CONTAINER AND TEXT",
                  style: context.textTheme.headlineSmall
                      ?.copyWith(color: ColorConstant.green)),
              NewsCard(
                imgSrc: Constants.dummyImg,
                title: "How can I be Flutter Developer Expert?",
                desc: "Jill Lepore \u2022 23 May 2023",
              ),
              UIHelper.verticalSpace(sectionPadding),
              Text("COLUMN",
                  style: context.textTheme.headlineSmall
                      ?.copyWith(color: ColorConstant.green)),
              Column(
                children: [
                  NewsCard(
                    imgSrc: Constants.dummyImg,
                    title: "How can I be Flutter Developer Expert 1?",
                    desc: "Jill Lepore \u2022 23 May 2023",
                  ),
                  UIHelper.verticalSpace(10),
                  NewsCard(
                    imgSrc: Constants.dummyImg,
                    title: "How can I be Flutter Developer Expert 2?",
                    desc: "Jill Lepore \u2022 23 May 2023",
                  ),
                ],
              ),
              UIHelper.verticalSpace(sectionPadding),
              Text("ROW",
                  style: context.textTheme.headlineSmall
                      ?.copyWith(color: ColorConstant.green)),
              Row(
                children: [
                  Expanded(
                    child: DummyContainerCard(
                        imgSrc: Constants.dummyImg, title: "Container 1"),
                  ),
                  UIHelper.horizontalSpace(10),
                  Expanded(
                    child: DummyContainerCard(
                        imgSrc: Constants.dummyImg, title: "Container 2"),
                  ),
                  UIHelper.horizontalSpace(10),
                  Expanded(
                    child: DummyContainerCard(
                        imgSrc: Constants.dummyImg, title: "Container 3"),
                  ),
                ],
              ),
              UIHelper.verticalSpace(sectionPadding),
              Text("BUTTON",
                  style: context.textTheme.headlineSmall
                      ?.copyWith(color: ColorConstant.green)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('SUBMIT'),
                ),
              ),
              UIHelper.verticalSpace(sectionPadding),
              Text("INPUT",
                  style: context.textTheme.headlineSmall
                      ?.copyWith(color: ColorConstant.green)),
              const TextFormFieldCustom(
                title: 'Email',
                hintText: 'Enter your email..',
              ),
              UIHelper.verticalSpace(sectionPadding),
              Text(
                "IMAGE ASSETS, SIZED BOX, AND EXPANDED",
                style: context.textTheme.headlineSmall
                    ?.copyWith(color: ColorConstant.green),
              ),
              Row(
                children: [
                  Expanded(
                      child: DummyContainerCard(
                          imgSrc: Constants.dummyImg, title: '1st Container')),
                  UIHelper.horizontalSpace(20),
                  DummyContainerCard(
                      imgSrc: Constants.dummyImg, title: '3rd Container'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
