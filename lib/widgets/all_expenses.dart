import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_items_list_view.dart';

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
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(height: 16),
            AllExpensesItemsListView(),
          ],
        ),
      ),
    );
  }
}
