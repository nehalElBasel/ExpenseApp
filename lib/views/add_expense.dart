import 'package:expense_tracker_app/constants/app_styles.dart';
import 'package:expense_tracker_app/cubit/add_expense_cubit.dart';
import 'package:expense_tracker_app/cubit/pickup_date_picker_cubit.dart';
import 'package:expense_tracker_app/cubit/pickup_date_picker_states.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widgets/drop_down_input.dart';
import 'package:expense_tracker_app/widgets/form_date_picker.dart';
import 'package:expense_tracker_app/widgets/text_form_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddExpenseView extends StatefulWidget {
  const AddExpenseView({super.key});

  @override
  State<AddExpenseView> createState() => _AddExpenseViewState();
}

class _AddExpenseViewState extends State<AddExpenseView> {
  final GlobalKey<FormState> formKey = GlobalKey();

  late double amount;

  late String? describtion;
  late String? category = "food";

  String? _validate_amount(String? val) {
    if (val == "") {
      return "Please Enter Valid Amount";
    }
    double amount = double.tryParse(val!) ?? 0;
    if (amount <= 0) {
      return "Amount must be greater than 0";
    }
  }

  String? _validate_describtion(String? describtion) {
    if (describtion == "" || describtion!.trim() == "") {
      return "Please Enter Expense Describtion and must be at least one char to 50 char";
    }
  }

  void _onAmountSaved(String? value) {
    amount = double.tryParse(value!) ?? 0;
  }

  void _onDescribtionSaved(String? value) {
    describtion = value;
  }

  void _onSelectCategory(String? value) {
    category = value;
  }

  _onSubmit() {
    print("on submut");
    if (formKey.currentState!.validate()) {
      DateTime date = BlocProvider.of<PickUpDatePickerCubit>(context).picked!;
      print("date $date");
      formKey.currentState!.save();
      ExpenseModel expense = ExpenseModel(
        title: describtion!,
        date: date,
        amount: amount,
        category: category!,
      );

      Navigator.of(context).pop();
      BlocProvider.of<AddExpenseCubit>(context).addExpense(expense);
    } else {
      print("error in validation");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Add new Expensee", style: AppStyles.headLineTitle),
              Text(
                "Enter the details of your expense to help you track your spending",
                style: AppStyles.headLineSubTitle,
              ),

              TextFormInput(
                title: "Enter Amount",
                isAmount: true,
                validator: _validate_amount,
                onSaved: _onAmountSaved,
              ),
              TextFormInput(
                title: "Describtion",
                validator: _validate_describtion,
                onSaved: _onDescribtionSaved,
              ),
              DropDownFormInput(
                title: "Category",
                onChanged: _onSelectCategory,
              ),
              FormDatePicker(),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child:
                    BlocBuilder<PickUpDatePickerCubit, PickUpDatePickerState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          style: AppStyles.butonStyle,
                          // style: ,
                          onPressed: _onSubmit,
                          child: Text("Add Expense"),
                        );
                      },
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
