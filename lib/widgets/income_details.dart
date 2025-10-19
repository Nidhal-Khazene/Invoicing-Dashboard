import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IncomeDetailsItem(
          color: Color(0xFF208BC7),
          text: "Design service",
          value: 40,
        ),
        SizedBox(height: 12),
        IncomeDetailsItem(
          color: Color(0xFF4DB7F2),
          text: "Design service",
          value: 25,
        ),
        SizedBox(height: 12),
        IncomeDetailsItem(
          color: Color(0xFF064060),
          text: "Product royalti",
          value: 20,
        ),
        SizedBox(height: 12),
        IncomeDetailsItem(color: Color(0xFFE2DECD), text: "Other", value: 22),
      ],
    );
  }
}
