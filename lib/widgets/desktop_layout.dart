import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/all_expenses.dart';
import 'package:invoicing_dashboard/widgets/custom_drawer.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: AllExpenses()),
              SliverToBoxAdapter(child: SizedBox(height: 24)),
              SliverToBoxAdapter(child: QuickInvoice()),
            ],
          ),
        ),
      ],
    );
  }
}
