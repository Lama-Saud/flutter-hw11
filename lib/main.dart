import 'package:flutter/material.dart';
import 'package:hw_11/models/item.dart';
import 'package:hw_11/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Item item = items[1];
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: DetailScreen(
      //   item: item,
      // ),
    );
  }
}
