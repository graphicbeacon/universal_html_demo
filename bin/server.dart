import 'package:universal_html/driver.dart';

import 'package:universal_example/renderer.dart';
import 'package:universal_example/scraper.dart';

void main() {
  final renderer = ServerSideRenderer(scraper);
  renderer.bind('localhost', 1234, onReady: (_) {});
}
