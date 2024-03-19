import 'package:flutter/material.dart';
import 'package:kafiil_task/core/resources/string_manager.dart';
import 'package:kafiil_task/core/routes/pages_route_name.dart';
import 'package:kafiil_task/features/login/pages/login_screen.dart';
import 'package:kafiil_task/features/registeration/pages/register_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRoutesName.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case PagesRoutesName.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
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
