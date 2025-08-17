import 'package:expense_tracker_app/cubit/add_expense_cubit.dart';
import 'package:expense_tracker_app/cubit/add_expense_states.dart';
import 'package:expense_tracker_app/cubit/pickup_date_picker_cubit.dart';
import 'package:expense_tracker_app/views/add_expense.dart';
import 'package:expense_tracker_app/views/expenses.dart';
import 'package:expense_tracker_app/views/no_expenses_or_failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddExpenseCubit()),
        BlocProvider(create: (context) => PickUpDatePickerCubit()),
      ],
      child: MaterialApp(
        title: 'Expense Tracker App',

        home: BlocBuilder<AddExpenseCubit, ExpenseStates>(
          builder: (context, state) {
            if (state is AddedExpenses) {
              return ExpensesView();
            } else if (state is FailureAddExpenses) {
              return NoExpensesView(state.errorMessage);
            } else {
              // return NoExpensesView("There is no Expenses till now");
              return ExpensesView();
              // return Scaffold(body: Center(child: CircularProgressIndicator()));
            }
          },
        ),
        routes: {"add_expense": (ctx) => AddExpenseView()},
      ),
    );
  }
}
