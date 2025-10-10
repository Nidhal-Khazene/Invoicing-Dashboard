import 'package:flutter/material.dart';

import '../constants.dart';
import '../utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Monthly", style: AppStyles.medium16),
        const SizedBox(width: 18),
        Transform.rotate(
          angle: -1.5708,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: kSecondaryColor,
          ),
        ),
      ],
    );
  }
}
