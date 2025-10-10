import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/images.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_item.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_item_model.dart';

import 'all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const AllExpensesHeader(),
            const SizedBox(height: 16),
            AllExpensesItem(
              allExpensesItemModel: AllExpensesItemModel(
                icon: Images.iconsIncome,
                name: "Income",
                date: "April 2022",
                price: r"$20,129",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
