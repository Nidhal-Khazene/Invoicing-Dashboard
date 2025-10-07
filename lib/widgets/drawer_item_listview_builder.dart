import 'package:flutter/material.dart';

import '../utils/images.dart';
import 'drawer_item.dart';
import 'drawer_item_model.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int selectedIndex = 0;
  final List<DrawerItemModel> drawerItemList = const [
    DrawerItemModel(title: "Dashboard", leading: Images.iconsDashboard),
    DrawerItemModel(title: "My Transaction", leading: Images.iconsTransaction),
    DrawerItemModel(title: "Statistics", leading: Images.iconsStatistics),
    DrawerItemModel(
      title: "Wallet Account",
      leading: Images.iconsWalletAccount,
    ),
    DrawerItemModel(
      title: "My Investments",
      leading: Images.iconsMyInvestments,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drawerItemList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GestureDetector(
            onTap: () {
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            child: DrawerItem(
              isActive: selectedIndex == index,
              drawerItemModel: drawerItemList[index],
            ),
          ),
        );
      },
    );
  }
}
