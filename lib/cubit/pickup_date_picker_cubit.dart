import 'package:expense_tracker_app/cubit/pickup_date_picker_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PickUpDatePickerCubit extends Cubit<PickUpDatePickerState> {
  PickUpDatePickerCubit() : super(NoPickedDateState());
  DateTime? picked = DateTime.now();
  Future<void> pickDate(BuildContext context) async {
    print("hereeeeeeeeeeee");
    picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // default today
      firstDate: DateTime(2025), // earliest allowed date
      lastDate: DateTime(2026), // latest allowed date
    );

    if (picked != null) {
      emit(PickedDateState(picked!));
    }
    // if (picked != null && picked != _selectedDate) {
    //   setState(() {
    //     _selectedDate = picked;
    //   });

    // }
  }
}
