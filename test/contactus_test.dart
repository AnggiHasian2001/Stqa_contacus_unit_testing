import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:contactus/models/custom_field.dart'; // replace with the actual path

class MockLauncher extends Mock implements Launcher {
  @override
  Future<void> launch(String urlString,
      {bool useWebView = false, bool enableJavaScript = false}) {
    return super.noSuchMethod(
      Invocation.method(
        #launch,
        [urlString],
        {#useWebView: useWebView, #enableJavaScript: enableJavaScript},
      ),
      returnValue: Future<void>.value(),
    );
  }
}

class Launcher {}

void main() {
  group('ContactUs', () {
    testWidgets('Renders ContactUs widget', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(
        MaterialApp(
          home: ContactUs(
            companyName: 'Company Name',
            textColor: Colors.black,
            cardColor: Colors.white,
            companyColor: Colors.blue,
            taglineColor: Colors.green,
            email: 'test@example.com',
          ),
        ),
      );

      // Expect to find the tagline text.
      expect(find.text('Taglin e Text'), findsOneWidget);

      // You can add more expectations based on your UI.
    });
  });
}
