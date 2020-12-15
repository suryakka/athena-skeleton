import 'package:athena_skeleton/common/config/injector.dart';
import 'package:flutter/material.dart';

import 'app.dart' as app;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Setup injections & Logger here
  await setupInjections();

  app.main();
}
