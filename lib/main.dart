import 'package:flutter/material.dart';
import 'package:trackmyexpense/features/expense/presentation/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: ExpenseHomePage());
  }
}
