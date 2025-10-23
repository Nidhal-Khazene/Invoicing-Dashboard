import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/widgets/custom_transection_list_tile.dart';
import 'package:invoicing_dashboard/widgets/transection_list_tile_model.dart';

class TransectionHistory extends StatefulWidget {
  const TransectionHistory({super.key});

  @override
  State<TransectionHistory> createState() => _TransectionHistoryState();
}

class _TransectionHistoryState extends State<TransectionHistory> {
  List<TransectionListTileModel> items = const [
    TransectionListTileModel(
      trailingTitleColor: Color(0xffF3735E),
      title: "Cash Withdrawal",
      subtitle: "13 Apr, 2022 ",
      trailingTitle: r"$20,129",
    ),
    TransectionListTileModel(
      trailingTitleColor: Color(0xff7DD97B),
      title: "Landing Page project",
      subtitle: "13 Apr, 2022 at 3:30 PM",
      trailingTitle: r"$2,000",
    ),
    TransectionListTileModel(
      trailingTitleColor: Color(0xff7DD97B),

      title: "Juni Mobile App project",
      subtitle: "13 Apr, 2022 at 3:30 PM",
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
            Text("Transaction History", style: AppStyles.semiBold20(context)),
            Text(
              "See all",
              style: AppStyles.medium16(context).copyWith(color: kPrimaryColor),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: items
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: CustomTransectionListTile(transectionListTileModel: e),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
