// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $temtemListRoute,
    ];

RouteBase get $temtemListRoute => GoRouteData.$route(
      path: '/',
      factory: $TemtemListRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'filters',
          factory: $FiltersRouteExtension._fromState,
        ),
      ],
    );

extension $TemtemListRouteExtension on TemtemListRoute {
  static TemtemListRoute _fromState(GoRouterState state) => TemtemListRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FiltersRouteExtension on FiltersRoute {
  static FiltersRoute _fromState(GoRouterState state) => FiltersRoute();

  String get location => GoRouteData.$location(
        '/filters',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
