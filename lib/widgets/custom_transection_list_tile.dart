import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/widgets/transection_list_tile_model.dart';

class CustomTransectionListTile extends StatelessWidget {
  const CustomTransectionListTile({
    super.key,
    required this.transectionListTileModel,
    this.trailingTextColor,
  });
  final TransectionListTileModel transectionListTileModel;
  final Color? trailingTextColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: ListTile(
        title: Text(
          transectionListTileModel.title,
          style: AppStyles.semiBold16,
        ),
        subtitle: Text(
          transectionListTileModel.subtitle,
          style: AppStyles.regular16,
        ),
        trailing: Text(
          transectionListTileModel.trailingTitle,
          style: AppStyles.semiBold20.copyWith(color: trailingTextColor),
        ),
      ),
    );
  }
}
