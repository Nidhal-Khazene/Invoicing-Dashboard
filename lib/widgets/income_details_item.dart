import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/widgets/income_details_item_model.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.itemModel});

  final IncomeDetailsItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: itemModel.color,
        ),
      ),
      title: Text(
        itemModel.text,
        style: AppStyles.regular16.copyWith(color: kSecondaryColor),
      ),
      trailing: Text(
        "${itemModel.value}%",
        style: AppStyles.medium16.copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
