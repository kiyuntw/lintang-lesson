import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/chip.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    var leftValue = '';
    var rightValue = '';
    var answer = '2';
    var operation = '+';
    const double sectionPadding = 20;
    const double horizontalOperationMargin = 10;

    return Scaffold(
      appBar: const PlatformAppBar(title: Text('Simple Calculator')),
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("CHOOSE TYPE",
                style: context.textTheme.headlineSmall
                    ?.copyWith(color: ColorConstant.green)),
            UIHelper.verticalSpace(sectionPadding),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: <Widget>[
                ChipCustom(
                  title: 'Add',
                  onTap: () {},
                ),
                ChipCustom(
                  title: 'Subtract',
                  onTap: () {},
                ),
                ChipCustom(
                  title: 'Multiply',
                  onTap: () {},
                ),
                ChipCustom(
                  title: 'Divide',
                  onTap: () {},
                ),
                ChipCustom(
                  title: 'Pow',
                  onTap: () {},
                )
              ],
            ),
            UIHelper.verticalSpace(sectionPadding),
            Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: const TextStyle(fontSize: 20),
                    onChanged: (value) {
                      leftValue = value;
                    },
                  ),
                ),
                UIHelper.horizontalSpace(horizontalOperationMargin),
                Text(operation),
                UIHelper.horizontalSpace(horizontalOperationMargin),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: const TextStyle(fontSize: 20),
                    onChanged: (value) {
                      rightValue = value;
                    },
                  ),
                ),
                UIHelper.horizontalSpace(horizontalOperationMargin),
                const Text('='),
                UIHelper.horizontalSpace(horizontalOperationMargin),
                Text(answer),
              ],
            ),
            UIHelper.verticalSpace(sectionPadding),
            Container(
              padding: UIHelper.padding(vertical: 10, horizontal: 10),
              decoration: const BoxDecoration(
                color: ColorConstant.green,
              ),
              child: Row(
                children: [
                  Text('ⓘ'),
                  UIHelper.horizontalSpace(horizontalOperationMargin),
                  const Text(
                    'Press calculate button to get the result',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            UIHelper.verticalSpace(sectionPadding),
            Text("HISTORY",
                style: context.textTheme.headlineSmall
                    ?.copyWith(color: ColorConstant.green)),
            UIHelper.verticalSpace(sectionPadding),
            // ListView.builder(
            //   itemBuilder: (context, index) => Padding(
            //     padding: UIHelper.padding(vertical: 10, horizontal: 15),
            //     child: Row(
            //       children: [
            //         Expanded(
            //           child: const Text('1 ^ 2'),
            //         ),
            //         TextButton(
            //           onPressed: () {},
            //           child: const Text('Re-apply'),
            //         )
            //       ],
            //     ),
            //   ),
            //   itemCount: 1,
            // ),
            const Expanded(
              child: SizedBox(),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('CALCULATE'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
