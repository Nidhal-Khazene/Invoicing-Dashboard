import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice.dart';

import 'all_expenses.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [AllExpenses(), SizedBox(height: 24), QuickInvoice()],
    );
  }
}
