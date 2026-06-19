import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invoicing_dashboard/constants.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';
import 'package:invoicing_dashboard/utils/images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Images.iconsCardBackgroundAffect),
          ),
          color: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(
                left: 31,
                right: 45,
                top: 20,
              ),
              title: Text(
                "Name card",
                style: AppStyles.regular16(
                  context,
                ).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.medium20(
                  context,
                ).copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(Images.iconsCardGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.semiBold24(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.regular16(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 27),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
