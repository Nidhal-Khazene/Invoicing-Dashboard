import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';

import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';
import 'all_expenses_item_model.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

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
          AllExpensesItemHeader(
            iconImage: allExpensesItemModel.icon,
            backgroundIconColor: const Color(0xffFAFAFA),
            iconColor: kPrimaryColor,
          ),
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

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            iconImage: allExpensesItemModel.icon,
            iconColor: Colors.white,
            backgroundIconColor: Colors.white.withValues(alpha: 0.10),
          ),
          const SizedBox(height: 34),
          Text(
            allExpensesItemModel.name,
            style: AppStyles.semiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.regular14.copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(height: 16),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.semiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
