import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:invoicing_dashboard/widgets/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: AllExpensesAndQuickInvoiceSection()),
      ],
    );
  }
}
