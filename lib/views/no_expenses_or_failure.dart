import 'package:expense_tracker_app/main.dart';
import 'package:flutter/material.dart';

class NoExpensesView extends StatelessWidget {
  const NoExpensesView(this.errorMessage, {super.key});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Center(child: Text(errorMessage)));
  }
}
