import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_item_header.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_item_model.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(iconImage: allExpensesItemModel.icon),
          const SizedBox(height: 34),
          Text(allExpensesItemModel.name, style: AppStyles.semiBold16),
          const SizedBox(height: 8),
          Text(allExpensesItemModel.date, style: AppStyles.regular14),
          const SizedBox(height: 16),
          Text(allExpensesItemModel.price, style: AppStyles.semiBold24),
        ],
      ),
    );
  }
}
