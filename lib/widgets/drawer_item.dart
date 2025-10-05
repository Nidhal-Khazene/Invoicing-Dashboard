import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(drawerItemModel.title),
      leading: Text(drawerItemModel.leading),
    );
  }
}
