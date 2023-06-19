import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toni/product/auth/forget_password/view/forget_password_view.dart';
import 'package:toni/product/main_page_view/view/mainpage_view.dart';

import '../../product/auth/login/view/login_view.dart';
import '../../product/auth/register/view/register_view.dart';
import '../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  static NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;
  NavigationRoute._init();

  Route<dynamic> genarateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.LOGIN_VIEW:
        return normalNavigate(
          LoginView(),
        );
      case NavigationConstants.FORGET_PASSWORD_VIEW:
        return normalNavigate(
          ForgetPasswordView(),
        );

      case NavigationConstants.REGISTER_VIEW:
        return normalNavigate(
          RegisterView(),
        );

      case NavigationConstants.MAIN_PAGE_VIEW:
        return normalNavigate(
          const MainPageView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Not Found"),
            ),
          ),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
