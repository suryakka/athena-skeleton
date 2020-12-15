import 'package:athena_skeleton/common/config/injector.dart';

import 'app.dart' as app;

void main() async {
  // Setup injections & Logger here
  await setupInjections();

  app.main();
}
