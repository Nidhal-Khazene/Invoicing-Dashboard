import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/widgets/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 28, left: 20, top: 20),
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(userInfoModel.title, style: AppStyles.semiBold16),
          subtitle: Text(userInfoModel.subtitle, style: AppStyles.regular12),
        ),
      ),
    );
  }
}
