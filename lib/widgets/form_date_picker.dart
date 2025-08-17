import 'package:expense_tracker_app/constants/app_colors.dart';
import 'package:expense_tracker_app/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormDatePicker extends StatefulWidget {
  const FormDatePicker({super.key});

  @override
  State<FormDatePicker> createState() => _FormDatePickerState();
}

class _FormDatePickerState extends State<FormDatePicker> {
  DateTime _selectedDate = DateTime.now();

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // default today
      firstDate: DateTime(2025), // earliest allowed date
      lastDate: DateTime(2026), // latest allowed date
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  String _formatDate(DateTime date) {
    return DateFormat('MMM d, yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    print(_selectedDate);
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Date", style: AppStyles.textFormLabel),
          Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.only(top: 10),
            decoration: AppStyles.containerDecoration,
            child: Row(
              children: [
                Text(_formatDate(_selectedDate)),
                Spacer(),
                IconButton(onPressed: _pickDate, icon: Icon(Icons.date_range)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
