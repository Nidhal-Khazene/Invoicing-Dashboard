import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({
    super.key,
    required this.color,
    required this.text,
    required this.value,
  });
  final Color color;
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(shape: const OvalBorder(), color: color),
        ),
        const SizedBox(width: 12),
        Text(text, style: AppStyles.regular16),
        const Expanded(child: SizedBox()),
        Text("%$value", style: AppStyles.medium16),
      ],
    );
  }
}
