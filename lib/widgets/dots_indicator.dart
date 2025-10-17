import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 8),
          child: CustomDotIndicator(isActive: false),
        ),
      ),
    );
  }
}
