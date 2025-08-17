import 'package:expense_tracker_app/constants/app_styles.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class DropDownFormInput extends StatelessWidget {
  const DropDownFormInput({
    super.key,
    required this.title,
    required this.onChanged,
  });
  final String title;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppStyles.textFormLabel),
          SizedBox(height: 6),
          DropdownButtonFormField(
            value: categories.keys.first,
            decoration: AppStyles.textFormFieldDecoration,
            icon: Icon(Icons.arrow_forward_ios, size: 20),
            items:
                categories.entries
                    .map(
                      (item) => DropdownMenuItem(
                        value: item.key,
                        child: SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Image.asset(item.value, width: 100, height: 100),
                              Text(item.key),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
