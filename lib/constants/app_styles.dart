import 'package:expense_tracker_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppStyles {
  static const TextStyle textFormLabel = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headLineTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle headLineSubTitle = TextStyle(
    color: Colors.grey.shade500,
  );

  static final InputDecoration textFormFieldDecoration = InputDecoration(
    filled: true,
    fillColor: AppCololrs.formInputFilledColor,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppCololrs.formInputFilledColor, width: 2),
      borderRadius: BorderRadius.circular(13),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 2),
      borderRadius: BorderRadius.circular(13),
    ),
  );

  static final BoxDecoration containerDecoration = BoxDecoration(
    color: AppCololrs.formInputFilledColor,
    borderRadius: BorderRadius.circular(13),
  );

  static final ButtonStyle butonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),

    padding: EdgeInsets.symmetric(vertical: 15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
  );
}
