import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:eventapp/features/home/home.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute<void>(page: EventListPage, initial: true),
  AutoRoute<void>(page: EventDetailPage),
])
@lazySingleton
class AppRouter extends _$AppRouter {}
