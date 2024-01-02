import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/dummy_container_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();

  // Widget build(BuildContext context) {}
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: const Text('Dummy UI'),
              bottom: const TabBar(
                  tabs: [Tab(text: 'ListView'), Tab(text: 'GridView')])),
          body: TabBarView(children: [
            ListView.builder(
                itemBuilder: (context, index) => Padding(
                      padding: UIHelper.padding(vertical: 10, horizontal: 15),
                      child: NewsCard(
                          imgSrc: Constants.dummyImg,
                          title: 'How can I be Flutter Developer Expert 1?',
                          desc: 'Jill Lepore \u2022 23 May 2023'),
                    )),
            Padding(
              padding: UIHelper.padding(vertical: 10, horizontal: 15),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
                children: List.generate(9, (index) {
                  return DummyContainerCard(
                      imgSrc: Constants.dummyImg, title: 'Container $index');
                }),
              ),
            )
          ]),
        ));
  }
}
