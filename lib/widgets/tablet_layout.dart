import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:invoicing_dashboard/widgets/card_and_transection_view_section.dart';
import 'package:invoicing_dashboard/widgets/custom_drawer.dart';
import 'package:invoicing_dashboard/widgets/income_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: AllExpensesAndQuickInvoiceSection(),
                ),
                SizedBox(height: 24),
                CardAndTransectionViewSection(),
                SizedBox(height: 24),
                IncomeSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
