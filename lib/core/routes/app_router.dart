import 'package:auto_route/auto_route.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: MainRoute.page, initial: true),
    AutoRoute(page: DummyUIFirstRoute.page),
    AutoRoute(page: DummyUISecondRoute.page),
    AutoRoute(page: CalculatorRoute.page),
    AutoRoute(page: NewsRoute.page),
    AutoRoute(page: TopStoriesFilterRoute.page),
    AutoRoute(page: TopStoriesRoute.page),
    AutoRoute(page: MostPopularArticlesRoute.page),
    AutoRoute(page: CounterRoute.page),
    AutoRoute(page: InputValidationRoute.page),
  ];
}
