import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayoutFunction,
    required this.tabletLayoutFunction,
    required this.desktopLayoutFunction,
  });

  final WidgetBuilder mobileLayoutFunction,
      tabletLayoutFunction,
      desktopLayoutFunction;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tabletBreakPoint) {
          return mobileLayoutFunction(context);
        } else if (constraints.maxWidth < SizeConfig.desktopBreakPoint) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: tabletLayoutFunction(context),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: desktopLayoutFunction(context),
          );
        }
      },
    );
  }
}
