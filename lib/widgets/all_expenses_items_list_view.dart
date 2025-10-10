import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/images.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_item.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_item_model.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});
  static const List<AllExpensesItemModel> itemModel = [
    AllExpensesItemModel(
      icon: Images.iconsBalance,
      date: "April 2022",
      name: "Balance",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      icon: Images.iconsIncome,
      date: "April 2022",
      name: "Income",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      icon: Images.iconsExpenses,
      date: "April 2022",
      name: "Expenses",
      price: r"$20,129",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: itemModel.asMap().entries.map((element) {
        int index = element.key;
        var item = element.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(allExpensesItemModel: item),
            ),
          );
        } else {
          return Expanded(child: AllExpensesItem(allExpensesItemModel: item));
        }
      }).toList(),
    );
  }
}
