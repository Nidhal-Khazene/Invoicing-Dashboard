import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/all_expenses.dart';
import 'package:invoicing_dashboard/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 2,
          child: Column(children: [Expanded(child: AllExpenses())]),
        ),
      ],
    );
  }
}
