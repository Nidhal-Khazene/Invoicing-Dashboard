import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
          color: const Color(0xff208CC8),
          value: 40,
          showTitle: false,
          radius: currentSectionIndex == 0
              ? kTouchRadiusChart
              : kNormalRadiusChart,
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          value: 25,
          showTitle: false,
          radius: currentSectionIndex == 1
              ? kTouchRadiusChart
              : kNormalRadiusChart,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          value: 20,
          showTitle: false,
          radius: currentSectionIndex == 2
              ? kTouchRadiusChart
              : kNormalRadiusChart,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),
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
