import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive ? kPrimaryColor : const Color(0xFFE7E7E7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
