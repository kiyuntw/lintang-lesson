// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:trinity_lecture_app/presentation/pages/dummy_page.dart' as _i1;
import 'package:trinity_lecture_app/presentation/pages/splash_page.dart' as _i2;
import 'package:trinity_lecture_app/presentation/pages/tabbar_page.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DummyRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DummyPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashPage(),
      );
    },
    TabBarRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.TabBarPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DummyPage]
class DummyRoute extends _i4.PageRouteInfo<void> {
  const DummyRoute({List<_i4.PageRouteInfo>? children})
      : super(
          DummyRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.TabBarPage]
class TabBarRoute extends _i4.PageRouteInfo<void> {
  const TabBarRoute({List<_i4.PageRouteInfo>? children})
      : super(
          TabBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabBarRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
