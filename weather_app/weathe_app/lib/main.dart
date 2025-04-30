import 'package:flutter/material.dart';
//import 'package:weathe_app/Screens/Home_page.dart';
import 'package:weathe_app/Screens/search_screan.dart';
//import 'package:weathe_app/server/api_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SearchScreen());
  }
}
