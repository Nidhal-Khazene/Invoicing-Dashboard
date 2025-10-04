import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/views/dashboard_view.dart';

void main() {
  runApp(const InvoicingDashboard());
}

class InvoicingDashboard extends StatelessWidget {
  const InvoicingDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DashboardView());
  }
}
