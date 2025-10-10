import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/images.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [AllExpensesItemHeader(iconImage: Images.iconsIncome)],
      ),
    );
  }
}
