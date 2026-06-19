import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int currentSectionIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          currentSectionIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          color: const Color(0xff047857),
          value: 40,
          showTitle: false,
          radius: currentSectionIndex == 0
              ? kTouchRadiusChart
              : kNormalRadiusChart,
        ),
        PieChartSectionData(
          color: const Color(0xff10B981),
          value: 25,
          showTitle: false,
          radius: currentSectionIndex == 1
              ? kTouchRadiusChart
              : kNormalRadiusChart,
        ),
        PieChartSectionData(
          color: const Color(0xff064E3B),
          value: 20,
          showTitle: false,
          radius: currentSectionIndex == 2
              ? kTouchRadiusChart
              : kNormalRadiusChart,
        ),
        PieChartSectionData(
          color: const Color(0xffA7F3D0),
          value: 22,
          showTitle: false,
          radius: currentSectionIndex == 3
              ? kTouchRadiusChart
              : kNormalRadiusChart,
        ),
      ],
    );
  }
}
