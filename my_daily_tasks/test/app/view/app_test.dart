import 'package:flutter_test/flutter_test.dart';
import 'package:my_daily_tasks/app/app.dart';
import 'package:my_daily_tasks/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      // await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
