import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invoicing_dashboard/widgets/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(drawerItemModel.title),
      leading: SvgPicture.asset(drawerItemModel.leading),
    );
  }
}
