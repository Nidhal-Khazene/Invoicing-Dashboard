import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/widgets/dots_indicator.dart';
import 'package:invoicing_dashboard/widgets/my_cards_custom_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.semiBold20),
        const SizedBox(height: 20),
        const MyCardsCustomPageView(),
        const SizedBox(height: 19),
        const DotsIndicator(),
      ],
    );
  }
}
