import 'package:athena_skeleton/common/routes/routes.dart';
import 'package:athena_skeleton/common/routes/routing.dart';
import 'package:athena_skeleton/presentation/home_screen/home_screen.dart';
import 'package:athena_skeleton/template_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp(
        key: Key('AppScreen_materialApp_initialRoute'),
        debugShowCheckedModeBanner: false,
        title: 'PX',
        initialRoute: Routes.homeScreen,
        theme: ThemeData(
          // We set Poppins as our default font
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primaryColor: kPrimaryColor,
          accentColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
