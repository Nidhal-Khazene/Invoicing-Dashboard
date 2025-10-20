import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';
import 'package:invoicing_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:invoicing_dashboard/widgets/mobile_layout.dart';
import 'package:invoicing_dashboard/widgets/tablet_layout.dart';

import '../widgets/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leading: const Icon(Icons.menu),
              elevation: 0,
              backgroundColor: kPrimaryColor,
            )
          : null,
      body: AdaptiveLayout(
        mobileLayoutFunction: (context) => const MobileLayout(),
        tabletLayoutFunction: (context) => const TabletLayout(),
        desktopLayoutFunction: (context) => const DesktopLayout(),
      ),
    );
  }
}
