import 'package:universal_html/html.dart';

void render() {
  var output = querySelector('#output');

  if (output == null) {
    output = DivElement()..id = 'output';
    document.body.append(output);
  }

  output.text = 'Your Dart app is running with universal_html.';
}
