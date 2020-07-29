import 'package:universal_html/driver.dart';
import 'package:universal_html/html.dart';

void scraper() async {
  final driver = HtmlDriver();

  await driver.setDocumentFromUri(Uri.parse('https://news.ycombinator.com'));

  final topStoryTitles = driver.document.querySelectorAll('.title .storylink');

  document.body.append(DivElement()
    ..appendHtml(
      topStoryTitles.map((title) => title.text).join('<br />'),
    ));
}
