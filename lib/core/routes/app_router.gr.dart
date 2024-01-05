// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:trinity_lecture_app/presentation/pages/calculator/calculator_page.dart'
    as _i1;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui/dummy_ui_first_page.dart'
    as _i2;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui/dummy_ui_second_page.dart'
    as _i3;
import 'package:trinity_lecture_app/presentation/pages/main_page/main_page.dart'
    as _i4;
import 'package:trinity_lecture_app/presentation/pages/news/news_page.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    CalculatorRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CalculatorPage(),
      );
    },
    DummyUIFirstRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DummyUIFirstPage(),
      );
    },
    DummyUISecondRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DummyUISecondPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NewsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CalculatorPage]
class CalculatorRoute extends _i6.PageRouteInfo<void> {
  const CalculatorRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CalculatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalculatorRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DummyUIFirstPage]
class DummyUIFirstRoute extends _i6.PageRouteInfo<void> {
  const DummyUIFirstRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DummyUIFirstRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUIFirstRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DummyUISecondPage]
class DummyUISecondRoute extends _i6.PageRouteInfo<void> {
  const DummyUISecondRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DummyUISecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUISecondRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NewsPage]
class NewsRoute extends _i6.PageRouteInfo<void> {
  const NewsRoute({List<_i6.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
