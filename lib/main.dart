import 'package:flutter/material.dart';
import 'package:transport_app/pages/navpages/detail_page.dart';
import 'package:transport_app/pages/navpages/main_page.dart';
import 'package:transport_app/pages/welcome_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transport App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetailPage(),
    );
  }
}
