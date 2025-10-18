import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/widgets/transection_list_tile_model.dart';

class TransectionHistory extends StatelessWidget {
  const TransectionHistory({super.key});
  static final List<TransectionListTileModel> items = const [
    TransectionListTileModel(
      title: "Cash Withdrawal",
      subtitle: "13 Apr, 2022 ",
      trailingTitle: r"$20,129",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Transaction History", style: AppStyles.semiBold20),
            Text(
              "See all",
              style: AppStyles.medium16.copyWith(color: kPrimaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
