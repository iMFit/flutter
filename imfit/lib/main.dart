import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(IMFit());

class IMFit extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: InputPage(),
    );
  }
}
