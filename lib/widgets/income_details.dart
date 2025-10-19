import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/income_details_item.dart';
import 'package:invoicing_dashboard/widgets/income_details_item_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static final List<IncomeDetailsItemModel> items = [
    IncomeDetailsItemModel(
      color: const Color(0xFF208BC7),
      text: "Design service",
      value: 40,
    ),
    IncomeDetailsItemModel(
      color: const Color(0xFF4DB7F2),
      text: "Design product",
      value: 25,
    ),
    IncomeDetailsItemModel(
      color: const Color(0xFF064060),
      text: "Product royalti",
      value: 20,
    ),
    IncomeDetailsItemModel(
      color: const Color(0xFFE2DECD),
      text: "Other",
      value: 22,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Expanded(child: IncomeDetailsItem(itemModel: items[index]));
      },
    );
  }
}
