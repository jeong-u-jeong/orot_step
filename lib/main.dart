import 'package:flutter/material.dart';
import 'package:join_page/ui/page/step2_page.dart';
import 'package:join_page/ui/page/terms_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Step2Page()
    );
  }
}
