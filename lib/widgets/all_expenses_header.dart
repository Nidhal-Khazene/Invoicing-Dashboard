import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/range_option.dart';

import '../utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("All Expenses", style: AppStyles.semiBold20(context)),
        const Expanded(child: SizedBox()),
        const RangeOption(title: "Monthly"),
      ],
    );
  }
}
