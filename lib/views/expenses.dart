import 'package:expense_tracker_app/constants/app_colors.dart';
import 'package:expense_tracker_app/constants/app_styles.dart';
import 'package:expense_tracker_app/cubit/add_expense_cubit.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widgets/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpensesView extends StatelessWidget {
  const ExpensesView({super.key});
  // late List<ExpenseModel> expenses = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image(image: AssetImage("assets/images/pro.png")),
          ),
          title: Text(
            "Good Morning joe",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text("track your expense "),
          // trailing: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("add_expense");
            },
            icon: Icon(Icons.add, size: 30),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              // alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: AppCololrs.homecontainerColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text("spent for now", style: AppStyles.homeCntainerTextStyle),
                  Text(
                    "\$ ${BlocProvider.of<AddExpenseCubit>(context).extenseSummation}",
                    style: AppStyles.homeCntainerAmountTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            SizedBox(height: 10),
            Expanded(child: ExpenseList()),
          ],
        ),
      ),
    );
  }
}
