import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/images.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_item.dart';
import 'package:invoicing_dashboard/widgets/all_expenses_item_model.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> itemModel = [
    const AllExpensesItemModel(
      icon: Images.iconsBalance,
      date: "April 2022",
      name: "Balance",
      price: r"$20,129",
    ),
    const AllExpensesItemModel(
      icon: Images.iconsIncome,
      date: "April 2022",
      name: "Income",
      price: r"$20,129",
    ),
    const AllExpensesItemModel(
      icon: Images.iconsExpenses,
      date: "April 2022",
      name: "Expenses",
      price: r"$20,129",
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: itemModel.asMap().entries.map((element) {
        int index = element.key;
        var item = element.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateSelectedIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 6 : 0),
              child: AllExpensesItem(
                isActive: selectedIndex == index,
                allExpensesItemModel: item,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
