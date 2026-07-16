import 'package:flutter_test/flutter_test.dart';
import 'package:edos/app/app.dart';

void main() {
  testWidgets('EDOS launches', (tester) async {
    await tester.pumpWidget(const EdosApp());

    expect(find.text('EDOS Home'), findsOneWidget);
  });
}