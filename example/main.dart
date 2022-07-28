import 'package:filesize_i18n/filesize_i18n.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      localizationsDelegates: [
        FilesizeLocalizations.delegate,
      ],
      supportedLocales: FilesizeLocalizations.supportedLocales,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          filesize(context, 1024 * 1024),
        ),
      ),
    );
  }
}
