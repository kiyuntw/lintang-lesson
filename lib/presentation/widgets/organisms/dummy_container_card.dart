import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

class DummyContainerCard extends StatelessWidget {
  final String imgSrc;
  final String title;

  const DummyContainerCard({
    super.key,
    required this.imgSrc,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: UIHelper.padding(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstant.grey,
            width: 0.5,
          ),
          borderRadius: UIHelper.borderRadiusCircular(all: 10),
        ),
        child: Expanded(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: UIHelper.borderRadiusCircular(all: 10),
                child: Image.network(imgSrc,
                    width: UIHelper.setSp(70),
                    height: UIHelper.setSp(70),
                    fit: BoxFit.cover),
              ),
              UIHelper.verticalSpace(10),
              Text(
                title,
                style: context.textTheme.headlineSmall,
              ),
            ],
          ),
        ));
  }
}
