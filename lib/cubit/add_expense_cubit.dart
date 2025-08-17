import 'package:expense_tracker_app/cubit/add_expense_states.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddExpenseCubit extends Cubit<ExpenseStates> {
  List<ExpenseModel> expenses = [];
  double extenseSummation = 0;
  AddExpenseCubit() : super(NoExpenses());

  addExpense(ExpenseModel expense) {
    try {
      expenses.add(expense);
      extenseSummation += expense.amount;

      emit(AddedExpenses());
    } catch (e) {
      emit(FailureAddExpenses(e.toString()));
    }
  }
}
