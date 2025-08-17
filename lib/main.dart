import 'package:expense_tracker_app/views/add_expense.dart';
import 'package:expense_tracker_app/views/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ExpensesView(),
      routes: {"add_expense": (ctx) => AddExpenseView()},
    );
  }
}
