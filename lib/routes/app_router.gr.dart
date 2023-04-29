// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    EventListRoute.name: (routeData) {
      return MaterialPageX<void>(
        routeData: routeData,
        child: const EventListPage(),
      );
    },
    EventDetailRoute.name: (routeData) {
      final args = routeData.argsAs<EventDetailRouteArgs>();
      return MaterialPageX<void>(
        routeData: routeData,
        child: EventDetailPage(
          key: args.key,
          event: args.event,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          EventListRoute.name,
          path: '/',
        ),
        RouteConfig(
          EventDetailRoute.name,
          path: '/event-detail-page',
        ),
      ];
}

/// generated route for
/// [EventListPage]
class EventListRoute extends PageRouteInfo<void> {
  const EventListRoute()
      : super(
          EventListRoute.name,
          path: '/',
        );

  static const String name = 'EventListRoute';
}

/// generated route for
/// [EventDetailPage]
class EventDetailRoute extends PageRouteInfo<EventDetailRouteArgs> {
  EventDetailRoute({
    Key? key,
    required Event event,
  }) : super(
          EventDetailRoute.name,
          path: '/event-detail-page',
          args: EventDetailRouteArgs(
            key: key,
            event: event,
          ),
        );

  static const String name = 'EventDetailRoute';
}

class EventDetailRouteArgs {
  const EventDetailRouteArgs({
    this.key,
    required this.event,
  });

  final Key? key;

  final Event event;

  @override
  String toString() {
    return 'EventDetailRouteArgs{key: $key, event: $event}';
  }
}
