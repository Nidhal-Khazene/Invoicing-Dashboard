import 'package:flutter/material.dart';

import 'card_and_transection_view_section.dart';
import 'income_section.dart';

class MyCardAndTransectionAndChartViewSection extends StatelessWidget {
  const MyCardAndTransectionAndChartViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: CardAndTransectionViewSection()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: IncomeSection()),
      ],
    );
  }
}
