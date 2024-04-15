// Dies ist ein grundlegender Flutter-Widget-Test.
//
// Um ​​eine Interaktion mit einem Widget in Ihrem Test durchzuführen, verwenden Sie den WidgetTester
// Dienstprogramm im flutter_test-Paket. Sie können beispielsweise Tippen und Scrollen senden
// Gesten. Sie können WidgetTester auch verwenden, um untergeordnete Widgets im Widget zu finden
// Baum, Text lesen und überprüfen, ob die Werte der Widget-Eigenschaften korrekt sind.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:family/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Erstellen Sie unsere App und lösen Sie einen Frame aus.
    await tester.pumpWidget(const MyApp());

    // Überprüfen Sie, ob unser Zähler bei 0 beginnt.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tippen Sie auf das „+“-Symbol und lösen Sie einen Frame aus.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Überprüfen Sie, ob unser Zähler erhöht wurde.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
