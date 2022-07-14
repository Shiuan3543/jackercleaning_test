import 'package:flutter/material.dart';
import 'package:jackercleaning_test/page/homepage.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
          colorSchemeSeed: Color.fromRGBO(54, 187, 217, 0.8),
          appBarTheme: AppBarTheme(
            color: Color.fromRGBO(54, 187, 217, 0.8),
          )),
      home: HomePage(),
    );
  }
}