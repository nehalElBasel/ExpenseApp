class ExpenseStates {}

class NoExpenses extends ExpenseStates {}

class AddedExpenses extends ExpenseStates {}

class FailureAddExpenses extends ExpenseStates {
  FailureAddExpenses(this.errorMessage);
  final String errorMessage;
}
