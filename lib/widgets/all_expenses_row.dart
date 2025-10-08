import 'package:flutter/material.dart';

import '../constants.dart';
import '../utils/app_styles.dart';

class AllExpensesRow extends StatelessWidget {
  const AllExpensesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("All Expenses", style: AppStyles.semiBold20),
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text("Monthly", style: AppStyles.medium16),
              const SizedBox(width: 18),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: kSecondaryColor,
                size: 32,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
