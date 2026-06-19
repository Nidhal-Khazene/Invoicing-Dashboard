import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invoicing_dashboard/constants.dart';

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
        style: AppStyles.bold16(context).copyWith(color: kPrimaryColor),
      ),
      leading: SvgPicture.asset(drawerItemModel.leading),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(color: kPrimaryColor),
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
