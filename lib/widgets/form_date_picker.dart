import 'package:expense_tracker_app/constants/app_colors.dart';
import 'package:expense_tracker_app/constants/app_styles.dart';
import 'package:expense_tracker_app/cubit/pickup_date_picker_cubit.dart';
import 'package:expense_tracker_app/cubit/pickup_date_picker_states.dart';
import 'package:expense_tracker_app/utilites/utilites_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class FormDatePicker extends StatefulWidget {
  const FormDatePicker({super.key});

  @override
  State<FormDatePicker> createState() => _FormDatePickerState();
}

class _FormDatePickerState extends State<FormDatePicker> {
  DateTime _selectedDate = DateTime.now();

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
                BlocBuilder<PickUpDatePickerCubit, PickUpDatePickerState>(
                  builder: (context, state) {
                    if (state is PickedDateState) {
                      return Text(formatDate(state.date));
                    } else {
                      return Text(formatDate(_selectedDate));
                    }
                  },
                ),
                Spacer(),
                IconButton(
                  onPressed: () async {
                    await BlocProvider.of<PickUpDatePickerCubit>(
                      context,
                    ).pickDate(context);
                  },
                  icon: Icon(Icons.date_range),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
