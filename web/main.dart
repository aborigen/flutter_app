import 'package:flutter_web_ui/ui.dart' as ui;
//import 'package:flutter_web.examples.spinning_square/main.dart' as app;
import 'package:flutter_app/main.dart' as app;

main() async {
  await ui.webOnlyInitializePlatform();
  app.main();
}