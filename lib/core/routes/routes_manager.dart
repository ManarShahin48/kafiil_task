import 'package:flutter/material.dart';
import 'package:kafiil_task/Core/Resources/string_manager.dart';
import 'package:kafiil_task/core/Routes/pages_route_name.dart';
import 'package:kafiil_task/features/login/pages/login_screen.dart';
class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRoutesName.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(StringManager.noRouteFound),
        ),
        body: const Center(child: Text(StringManager.noRouteFound)),
      ),
    );
  }
}
