import 'package:expense_tracker_app/constants/app_styles.dart';
import 'package:expense_tracker_app/widgets/drop_down_input.dart';
import 'package:expense_tracker_app/widgets/form_date_picker.dart';
import 'package:expense_tracker_app/widgets/text_form_input.dart';
import 'package:flutter/material.dart';

class AddExpenseView extends StatelessWidget {
  const AddExpenseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Add new Expensee", style: AppStyles.headLineTitle),
              Text(
                "Enter the details of your expense to help you track your spending",
                style: AppStyles.headLineSubTitle,
              ),

              TextFormInput(title: "Enter Amount", isAmount: true),
              TextFormInput(title: "Describtion"),
              DropDownFormInput(title: "Category"),
              FormDatePicker(),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: AppStyles.butonStyle,
                  // style: ,
                  onPressed: () {},
                  child: Text("Add Expense"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
