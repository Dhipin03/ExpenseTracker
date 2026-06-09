import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:trackmyexpense/features/expense/presentation/widgets/calendar_widget.dart';
import 'package:trackmyexpense/features/expense/presentation/widgets/expenseadd_widget.dart';

class ExpenseHomePage extends StatefulWidget {
  const ExpenseHomePage({super.key});

  @override
  State<ExpenseHomePage> createState() => _ExpenseHomePageState();
}

class _ExpenseHomePageState extends State<ExpenseHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        left: false,
        right: false,
        child: Container(
          color: Colors.black,
          child: Column(children: [calendar_widget()]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        child: const Icon(Icons.add),
        onPressed: () => showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return AddTransactionDialog();
          },
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
    );
  }
}
