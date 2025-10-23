import 'package:flutter/material.dart';

import '../constants.dart';
import '../utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(title, style: AppStyles.medium16(context)),
          const SizedBox(width: 18),
          Transform.rotate(
            angle: -1.5708,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
