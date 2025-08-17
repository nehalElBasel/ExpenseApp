import 'package:expense_tracker_app/constants/app_styles.dart';
import 'package:flutter/material.dart';

class TextFormInput extends StatelessWidget {
  const TextFormInput({super.key, required this.title, this.isAmount = false});
  final String title;
  final bool isAmount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppStyles.textFormLabel),
          SizedBox(height: 6),
          TextFormField(
            maxLength: 50,
            decoration:
                isAmount
                    ? AppStyles.textFormFieldDecoration.copyWith(
                      prefixIcon: Icon(Icons.attach_money),
                    )
                    : AppStyles.textFormFieldDecoration,
          ),
        ],
      ),
    );
  }
}
