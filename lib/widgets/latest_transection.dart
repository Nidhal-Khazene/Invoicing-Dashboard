import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/widgets/latest_transection_list_view.dart';

class LatestTransection extends StatelessWidget {
  const LatestTransection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppStyles.medium16),
        const SizedBox(height: 12),
        const LatestTransectionListView(),
      ],
    );
  }
}
