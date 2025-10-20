import 'package:flutter/material.dart';

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
        if (constraints.maxWidth < 800) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: mobileLayoutFunction(context),
          );
        } else if (constraints.maxWidth < 1200) {
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
