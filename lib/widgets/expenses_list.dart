import 'package:expense_tracker_app/cubit/add_expense_cubit.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/utilites/utilites_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key});

  @override
  Widget build(BuildContext context) {
    List<ExpenseModel> expenses =
        BlocProvider.of<AddExpenseCubit>(context).expenses;

    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder:
          (ctx, index) => Card(
            child: ListTile(
              title: Text(
                expenses[index].title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Text(formatDate(expenses[index].date)),
              leading: Image.asset(categories[expenses[index].category]!),
              trailing: Text(
                "\$ ${expenses[index].amount.toStringAsFixed(2)}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
    );
  }
}
