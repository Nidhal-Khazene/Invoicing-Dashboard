import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/images.dart';
import 'package:invoicing_dashboard/widgets/user_info_list_tile.dart';
import 'package:invoicing_dashboard/widgets/user_info_model.dart';

class LatestTransectionListView extends StatelessWidget {
  const LatestTransectionListView({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Images.iconsAvatar1,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Images.iconsAvatar2,
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
    ),
    UserInfoModel(
      image: Images.iconsAvatar3,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return UserInfoListTile(userInfoModel: items[index]);
      },
    );
  }
}
