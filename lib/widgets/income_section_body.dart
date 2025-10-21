import 'package:flutter/material.dart';

import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width > 1200 && width < 1350
        ? const SizedBox()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(width: 40),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
