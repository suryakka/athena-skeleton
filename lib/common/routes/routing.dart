import 'package:athena_skeleton/common/routes/routes.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
            settings: RouteSettings(name: Routes.splashScreen),
            builder: (_) => _buildSplashScreen());
      default:
        return MaterialPageRoute(
            settings: RouteSettings(name: Routes.errorScreen),
            builder: (_) => _buildErrorScreen());
    }
  }

  static Widget _buildSplashScreen() {
    return Container(
      child: Center(
        child: Text('SPLASH SCREEN'),
      ),
    );
  }

  static Widget _buildErrorScreen() {
    return Container(
      child: Center(
        child: Text('ERROR SCREEN'),
      ),
    );
  }
}
