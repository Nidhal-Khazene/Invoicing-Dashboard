import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    this.textColor,
    required this.text,
  });
  final Color? backgroundColor, textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: FittedBox(
          fit: BoxFit.fill,
          child: Text(
            text,
            style: AppStyles.semiBold18(
              context,
            ).copyWith(color: textColor ?? Colors.white),
          ),
        ),
      ),
    );
  }
}
