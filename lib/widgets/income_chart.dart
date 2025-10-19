import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int currentSectionIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
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
          radius: currentSectionIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          value: 25,
          showTitle: false,
          radius: currentSectionIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          value: 20,
          showTitle: false,
          radius: currentSectionIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),
          value: 22,
          showTitle: false,
          radius: currentSectionIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
