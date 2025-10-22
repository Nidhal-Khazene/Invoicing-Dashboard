import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';
import 'package:invoicing_dashboard/utils/app_styles.dart';

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
          titleStyle: AppStyles.semiBold16.copyWith(
            color: currentSectionIndex == 0 ? kPrimaryColor : Colors.white,
          ),
          title: currentSectionIndex == 0 ? "Design Service" : null,
          titlePositionPercentageOffset: currentSectionIndex == 0 ? -1.2 : null,
          value: 40,
          radius: currentSectionIndex == 0
              ? kTouchRadiusChart
              : kNormalRadiusChart,
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          titleStyle: AppStyles.semiBold16.copyWith(
            color: currentSectionIndex == 1 ? kPrimaryColor : Colors.white,
          ),
          title: currentSectionIndex == 1 ? "Design Product" : null,
          titlePositionPercentageOffset: currentSectionIndex == 1 ? -1.5 : null,
          value: 25,
          radius: currentSectionIndex == 1
              ? kTouchRadiusChart
              : kNormalRadiusChart,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          titleStyle: AppStyles.semiBold16.copyWith(
            color: currentSectionIndex == 2 ? kPrimaryColor : Colors.white,
          ),
          title: currentSectionIndex == 2 ? "Product Royalti" : null,
          titlePositionPercentageOffset: currentSectionIndex == 2 ? -1.0 : null,
          value: 20,
          radius: currentSectionIndex == 2
              ? kTouchRadiusChart
              : kNormalRadiusChart,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),
          titleStyle: AppStyles.semiBold16.copyWith(
            color: currentSectionIndex == 3 ? kPrimaryColor : Colors.white,
          ),
          title: currentSectionIndex == 3 ? "Other" : null,
          titlePositionPercentageOffset: currentSectionIndex == 3 ? -0.6 : null,
          value: 22,
          radius: currentSectionIndex == 3
              ? kTouchRadiusChart
              : kNormalRadiusChart,
        ),
      ],
    );
  }
}
