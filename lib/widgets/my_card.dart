import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/utils/images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        width: 420,
        decoration: ShapeDecoration(
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: ListTile(
          title: Text(
            "Name card",
            style: AppStyles.regular16.copyWith(color: Colors.white),
          ),
          subtitle: Text(
            "Syah Bandi",
            style: AppStyles.medium20.copyWith(color: Colors.white),
          ),
          trailing: SvgPicture.asset(Images.iconsCardGallery),
        ),
      ),
    );
  }
}
