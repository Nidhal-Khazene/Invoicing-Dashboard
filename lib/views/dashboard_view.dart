import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';
import 'package:invoicing_dashboard/utils/size_config.dart';
import 'package:invoicing_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:invoicing_dashboard/widgets/custom_drawer.dart';
import 'package:invoicing_dashboard/widgets/mobile_layout.dart';
import 'package:invoicing_dashboard/widgets/tablet_layout.dart';

import '../widgets/desktop_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tabletBreakPoint
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu, color: kSecondaryColor),
              ),
              elevation: 0,
              backgroundColor: kPrimaryColor,
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.desktopBreakPoint
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayoutFunction: (context) => const MobileLayout(),
        tabletLayoutFunction: (context) => const TabletLayout(),
        desktopLayoutFunction: (context) => const DesktopLayout(),
      ),
    );
  }
}
