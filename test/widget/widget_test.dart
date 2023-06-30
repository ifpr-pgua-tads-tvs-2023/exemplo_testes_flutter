import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_converter/main.dart';

main() {
  testWidgets("Verifica teclado completo", (tester) async {
    //cenário
    await tester.pumpWidget(MyApp());

    //verificação

    expect(find.byType(ElevatedButton), findsNWidgets(13));
  });

  testWidgets("Verifica funcionamento teclas", (tester) async {
    //cenário
    await tester.pumpWidget(MyApp());

    //ação
    for (int i = 0; i <= 9; i++) {
      await tester.tap(find.byKey(Key("bt$i")));
      await tester.pump();
      //verificação
      expect(find.text("$i ºF"), findsOneWidget);

      await tester.tap(find.byKey(Key("btC")));
    }
  });
}
