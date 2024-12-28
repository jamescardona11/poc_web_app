import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_web_app/pages/home_page.dart';
import 'package:poc_web_app/pages/second_page.dart';
import 'package:poc_web_app/pages/token_page.dart';

void main() {
  runApp(const MainApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/second',
      builder: (context, state) => const SecondPage(),
    ),
    GoRoute(
      path: '/token',
      builder: (context, state) {
        final pxtoken = state.uri.queryParameters['pxtoken'];
        return TokenPage(pxtoken: pxtoken);
      },
    ),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
    );
  }
}
