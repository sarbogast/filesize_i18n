import 'package:filesize_i18n/filesize_i18n.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Filesize returns proper messages in English',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      Localizations(
        delegates: FilesizeLocalizations.localizationsDelegates,
        locale: const Locale('en'),
        child: Builder(
          builder: (BuildContext context) {
            expect(filesize(context, 10), '10 B');
            expect(filesize(context, '10'), '10 B');
            expect(filesize(context, 1024), '1 KB');
            expect(filesize(context, '1024'), '1 KB');
            expect(filesize(context, 1024 * 1024), '1 MB');
            expect(filesize(context, 1024 * 1024 * 1024), '1 GB');
            expect(filesize(context, 1024 * 1024 * 1024 * 1024), '1 TB');
            expect(filesize(context, 1024 * 1024 * 1024 * 1024 * 1024), '1 PB');

            late ArgumentError exception;
            try {
              filesize(context, 'abc');
            } on ArgumentError catch (e) {
              exception = e;
            }
            expect(exception, isArgumentError);

            // The builder function must return a widget.
            return const Placeholder();
          },
        ),
      ),
    );
  });

  testWidgets('Filesize returns proper messages in French',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      Localizations(
        delegates: FilesizeLocalizations.localizationsDelegates,
        locale: const Locale('fr'),
        child: Builder(
          builder: (BuildContext context) {
            expect(filesize(context, 10), '10 o');
            expect(filesize(context, '10'), '10 o');
            expect(filesize(context, 1024), '1 Ko');
            expect(filesize(context, '1024'), '1 Ko');
            expect(filesize(context, 1024 * 1024), '1 Mo');
            expect(filesize(context, 1024 * 1024 * 1024), '1 Go');
            expect(filesize(context, 1024 * 1024 * 1024 * 1024), '1 To');
            expect(filesize(context, 1024 * 1024 * 1024 * 1024 * 1024), '1 Po');

            late ArgumentError exception;
            try {
              filesize(context, 'abc');
            } on ArgumentError catch (e) {
              exception = e;
            }
            expect(exception, isArgumentError);

            // The builder function must return a widget.
            return const Placeholder();
          },
        ),
      ),
    );
  });
}
