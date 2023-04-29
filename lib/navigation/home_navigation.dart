import 'package:eventapp/features/home/home.dart';
import 'package:eventapp/routes/app_router.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeNavigation {
  HomeNavigation(this._appRouter);

  final AppRouter _appRouter;

  void openEventDetail(Event event) =>
      _appRouter.push(EventDetailRoute(event: event));
}
