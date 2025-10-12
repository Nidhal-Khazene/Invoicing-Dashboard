import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/images.dart';
import 'package:invoicing_dashboard/widgets/user_info_list_tile.dart';
import 'package:invoicing_dashboard/widgets/user_info_model.dart';

class LatestTransectionListView extends StatelessWidget {
  const LatestTransectionListView({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Images.iconsAvatar2,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Images.iconsAvatar3,
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
    ),
    UserInfoModel(
      image: Images.iconsAvatar2,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: items[index]),
          );
        },
      ),
    );
  }
}
