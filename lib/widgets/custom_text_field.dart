import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: hintText,
        hintStyle: AppStyles.regular16,
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }
}
