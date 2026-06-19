import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/images.dart';
import 'package:invoicing_dashboard/widgets/active_and_inactive_drawer_item.dart';
import 'package:invoicing_dashboard/widgets/drawer_item_model.dart';
import 'package:invoicing_dashboard/widgets/user_info_list_tile.dart';
import 'package:invoicing_dashboard/widgets/user_info_model.dart';

import 'drawer_item_listview_builder.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(right: 28, left: 15, top: 20),
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                  image: Images.iconsAvatar1,
                  title: "Lekan Okeowo",
                  subtitle: "demo@gmail.com",
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InactiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: "Setting system",
                    leading: Images.iconsSetting,
                  ),
                ),
                InactiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: "Logout account",
                    leading: Images.iconsLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
