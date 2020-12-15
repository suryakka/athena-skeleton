import 'package:athena_skeleton/common/widget/route_widgets/slide_transition_route.dart';
import 'package:athena_skeleton/common/routes/routes.dart';
import 'package:athena_skeleton/presentation/home_screen/home_screen.dart';
import 'package:athena_skeleton/template_app/furniture_app.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
            settings: RouteSettings(name: Routes.splashScreen),
            builder: (_) => _buildSplashScreen());

      case Routes.homeScreen:
        return MaterialPageRoute(
            settings: RouteSettings(name: Routes.splashScreen),
            builder: (_) => _buildHomeScreen());

      case Routes.furnitureScreen:
        return SlideRouteTransition(
            page: _buildFurnitureScreen(), animationTo: AnimationTo.left);
      default:
        return MaterialPageRoute(
            settings: RouteSettings(name: Routes.errorScreen),
            builder: (_) => _buildErrorScreen(),);
    }
  }

  static Widget _buildSplashScreen() {
    return Container(
      child: Center(
        child: Text('SPLASH SCREEN'),
      ),
    );
  }

  static Widget _buildHomeScreen() {
    return HomeScreen();
  }

  static Widget _buildErrorScreen() {
    return Container(
      child: Center(
        child: Text('ERROR SCREEN'),
      ),
    );
  }

  static Widget _buildFurnitureScreen() {
    return FurnitureApp();
  }
}
