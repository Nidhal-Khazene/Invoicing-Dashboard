import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'card_and_transection_view_section.dart';
import 'income_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          CardAndTransectionViewSection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
