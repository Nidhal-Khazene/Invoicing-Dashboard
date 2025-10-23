import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_styles.dart';
import 'drawer_item_model.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drawerItemModel.title,
        style: AppStyles.bold16(
          context,
        ).copyWith(color: const Color(0xFF4EB7F2)),
      ),
      leading: SvgPicture.asset(drawerItemModel.leading),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drawerItemModel.title,
        style: AppStyles.regular16(
          context,
        ).copyWith(color: const Color(0xff064061)),
      ),
      leading: SvgPicture.asset(drawerItemModel.leading),
    );
  }
}
