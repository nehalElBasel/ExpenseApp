class PickUpDatePickerState {}

class NoPickedDateState extends PickUpDatePickerState {}

class PickedDateState extends PickUpDatePickerState {
  PickedDateState(this.date);
  final DateTime date;
}
