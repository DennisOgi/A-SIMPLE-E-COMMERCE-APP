import 'package:flutter/material.dart';
import 'package:todo/models/cart_model.dart';
import 'package:provider/provider.dart';
import 'package:todo/pages/intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        title: "ALLABSY FOODS",
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        theme: ThemeData(primarySwatch: Colors.grey),
      ),
    );
  }
}
