import 'package:auto_route/auto_route.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_first_page.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: MainRoute.page, initial: true),
    AutoRoute(page: DummyUIFirstRoute.page),
    AutoRoute(page: DummyUISecondRoute.page),
  ];
}
