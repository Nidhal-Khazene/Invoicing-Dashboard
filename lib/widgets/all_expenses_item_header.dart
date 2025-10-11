import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.iconImage,
    this.iconColor,
    this.backgroundIconColor,
  });

  final String iconImage;
  final Color? iconColor;
  final Color? backgroundIconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: backgroundIconColor ?? const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              iconImage,
              colorFilter: ColorFilter.mode(
                iconColor ?? Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: iconColor ?? kSecondaryColor,
            size: 20,
          ),
        ),
      ],
    );
  }
}
