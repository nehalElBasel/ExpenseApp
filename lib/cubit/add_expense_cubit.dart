import 'package:expense_tracker_app/cubit/add_expense_states.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddExpenseCubit extends Cubit<ExpenseStates> {
  List<ExpenseModel> expenses = [];
  AddExpenseCubit() : super(NoExpenses());

  addExpense(ExpenseModel expense) {
    print("addExpense cubitttt");
    try {
      expenses.add(expense);

      emit(AddedExpenses());
    } catch (e) {
      emit(FailureAddExpenses(e.toString()));
    }
  }
}
