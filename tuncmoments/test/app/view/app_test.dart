import 'package:flutter_test/flutter_test.dart';
import 'package:tuncmoments/app/app.dart';
import 'package:tuncmoments/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
