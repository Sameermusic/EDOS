import 'package:flutter_test/flutter_test.dart';
import 'package:edos/main.dart';

void main() {
  testWidgets('EDOS app launches successfully', (tester) async {
    await tester.pumpWidget(const EdosApp());

    expect(find.text('EDOS'), findsOneWidget);
    expect(find.text('Edit Beyond Limits'), findsOneWidget);
  });
}