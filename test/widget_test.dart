// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:morty_app/di/injection.dart';
import 'package:morty_app/main.dart';

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await Locator.init();
  });

  testWidgets('App renders title', (WidgetTester tester) async {
    await tester.pumpWidget(const MortyApp(autoLoad: false));
    expect(find.text('Rick and Morty'), findsOneWidget);
  });
}
