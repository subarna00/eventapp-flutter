import 'package:design/design.dart';
import 'package:eventapp/di/di.dart';
import 'package:eventapp/di/injection.dart';
import 'package:flutter/material.dart';
import 'package:eventapp/routes/app_router.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);
  // final AppRouter appRouter;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true).copyWith(textTheme: poppins),
      routerDelegate: getIt<AppRouter>().delegate(),
      routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
    );
  }
}
