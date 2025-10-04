import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:invoicing_dashboard/widgets/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayoutFunction: (context) => SizedBox(),
      tabletLayoutFunction: (context) => SizedBox(),
      desktopLayoutFunction: (context) => DesktopLayout(),
    );
  }
}
