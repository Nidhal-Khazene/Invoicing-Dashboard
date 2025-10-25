import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/income_details_item.dart';
import 'package:invoicing_dashboard/widgets/income_details_item_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static final List<IncomeDetailsItemModel> items = [
    IncomeDetailsItemModel(
      color: const Color(0xff059669),
      text: "Design service",
      value: 40,
    ),
    IncomeDetailsItemModel(
      color: const Color(0xff10B981),
      text: "Design product",
      value: 25,
    ),
    IncomeDetailsItemModel(
      color: const Color(0xff064E3B),
      text: "Product royalti",
      value: 20,
    ),
    IncomeDetailsItemModel(
      color: const Color(0xffA7F3D0),
      text: "Other",
      value: 22,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => IncomeDetailsItem(itemModel: e)).toList(),
    );
  }
}
