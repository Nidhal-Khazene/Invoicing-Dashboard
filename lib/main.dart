import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/views/dashboard_view.dart';

void main() {
  runApp(const InvoicingDashboard());
}

class InvoicingDashboard extends StatelessWidget {
  const InvoicingDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Montserrat",
        scaffoldBackgroundColor: const Color(0xffF7F9FA),
      ),
      home: const DashboardView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
