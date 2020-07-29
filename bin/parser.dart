import 'package:universal_html/parsing.dart';

void main() {
  final html = parseHtmlDocument('''
    <html>
      <head>
        <title>Welcome to my website</title>
      </head>
      <body>
        <h1>Hello, World</h1>
        <p>Lorem ipsum dolor sit amet...</p>
      </body>
    </html>
  ''');
  // print(html.title);
  // print(html.body);
  // print(html.body.querySelector('h1').innerHtml);
  // print(html.body.querySelector('p').innerText);

  final xml = parseXmlDocument('''
    <xml>
      <rss version="2.0">
        <channel>
          <title>Creative Bracket</title>
          <atom:link href="https://creativebracket.com/feed/" rel="self" type="application/rss+xml" />
          <link>https://creativebracket.com</link>
          <description>Learn how to develop full-stack web applications with the Dart SDK</description>

          <item>
            <title>Flutter for React developers video series</title>
            <link>https://creativebracket.com/flutter-for-react-developers-video-series/</link>
          </item>

          <item>
            <title>Build a User Authentication system (Part 2)</title>
            <link>https://creativebracket.com/build-a-user-authentication-system-part-2/</link>
          </item>

          <item>
            <title>Angel Dart Framework Tutorial Series</title>
            <link>https://creativebracket.com/angel-dart-framework-tutorial-series/</link>
          </item>
        </channel>
      </rss>
    </xml>
  ''');
  print(xml.documentElement);
  print(xml.documentElement.querySelector('title').innerHtml);
  print(xml.documentElement
      .querySelectorAll('item title')
      .map((title) => title.innerText)
      .join('\n'));
}
