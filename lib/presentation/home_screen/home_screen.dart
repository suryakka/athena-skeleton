import 'package:athena_skeleton/common/routes/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Furniture App'),
              onPressed: () {
                Navigator.pushNamed(context, Routes.furnitureScreen);
              },
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}
