import 'package:athena_skeleton/common/routes/routes.dart';
import 'package:athena_skeleton/common/routes/routing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        initialRoute: Routes.furnitureScreen,
        onGenerateRoute: RouteGenerator.generateRoute,
        // home: Scaffold(body: Center(child: Text('HOME'),),),
      ),
    );
  }
}
