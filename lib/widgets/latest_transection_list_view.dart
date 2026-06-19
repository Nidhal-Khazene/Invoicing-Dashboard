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
    UserInfoModel(
      image: Images.iconsAvatar3,
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
            )
            .toList(),
      ),
    );
  }
}
