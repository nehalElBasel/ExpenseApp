import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widgets/expenses_list.dart';
import 'package:flutter/material.dart';

class ExpensesView extends StatelessWidget {
  const ExpensesView({super.key});
  // late List<ExpenseModel> expenses = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 238),
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
      // floatingActionButton: FloatingActionButton.extended(
      //   label: Text("Add"),
      //   onPressed: () {},
      //   icon: Icon(Icons.add),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              // alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    "spent for now",
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                  Text(
                    "\$10203030",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(child: ExpenseList()),
          ],
        ),
      ),
    );
  }
}
