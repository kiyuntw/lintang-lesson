import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trinity_lecture_app/core/commons/assets_path.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/text_form_field.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class InputValidationPage extends StatelessWidget {
  const InputValidationPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double sectionPadding = 20;

    return Scaffold(
        appBar: const PlatformAppBar(title: Text('Input Validation')),
        body: Padding(
          padding: UIHelper.padding(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi There',
                style: context.textTheme.headlineMedium
                    ?.copyWith(color: ColorConstant.primary),
              ),
              Text(
                'Please enter your name and email :)',
                style: context.textTheme.headlineSmall
                    ?.copyWith(color: ColorConstant.lightGrey),
              ),
              UIHelper.verticalSpace(sectionPadding),
              TextFormFieldCustom(
                title: 'Name',
                hintText: 'Enter your name..',
                preffixIcon: SvgPicture.asset(AssetsPath.userIcon),
              ),
              UIHelper.verticalSpace(sectionPadding),
              TextFormFieldCustom(
                title: 'Email',
                hintText: 'Enter your email..',
                preffixIcon: SvgPicture.asset(AssetsPath.emailIcon),
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('SUBMIT'),
                ),
              ),
            ],
          ),
        ));
  }
}
