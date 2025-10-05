import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/images.dart';
import 'package:invoicing_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Images.iconsAvatar1,
            title: "Lekan Okeowo",
            subtitle: "demo@gmail.com",
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
