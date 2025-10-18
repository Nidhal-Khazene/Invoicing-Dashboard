import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';

class CustomTransectionListTile extends StatelessWidget {
  const CustomTransectionListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailingText,
  });
  final String title, subtitle, trailingText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: ListTile(
        title: Text(title, style: AppStyles.semiBold16),
        subtitle: Text(subtitle, style: AppStyles.regular16),
        trailing: Text(trailingText, style: AppStyles.semiBold20),
      ),
    );
  }
}
