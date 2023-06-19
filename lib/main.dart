import 'package:flutter/material.dart';
import 'package:toni/product/auth/login/view/login_view.dart';

import 'core/navigation/navigation_route.dart';
import 'core/navigation/navigation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: NavigationRoute.instance.genarateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginView(),
    );
  }
}
