
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class AnalysisChart extends StatelessWidget {
  const AnalysisChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          getDrawingHorizontalLine: (value) =>
              FlLine(color: AppColors.lightGreen, strokeWidth: 1),
        ),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: (value, meta) {
                const years = [
                  '2015',
                  '2016',
                  '2017',
                  '2018',
                  '2019',
                  '2020',
                  '2021',
                  '2022',
                  '2023',
                  '2024',
                  '2025',
                ];

                if (value.toInt() < 0 || value.toInt() >= years.length) {
                  return const SizedBox.shrink();
                }

                return SideTitleWidget(
                  fitInside: SideTitleFitInsideData(
                    enabled: true,
                    axisPosition: meta.axisPosition,
                    parentAxisSize: meta.parentAxisSize,
                    distanceFromEdge: 10,
                  ),
                  space: 6,
                  meta: meta,
                  child: Text(
                    years[value.toInt()],
                    style: AppStyles.styleRegular40White(
                      context,
                    ).copyWith(color: AppColors.lightGreen, fontSize: 18),
                  ),
                );
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 25,
              getTitlesWidget: (value, meta) {
                return Text(
                  softWrap: false,
                  '$value%',
                  style: AppStyles.styleRegular40White(
                    context,
                  ).copyWith(color: AppColors.lightGreen, fontSize: 15.3),
                );
              },
            ),
          ),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        minX: 0,
        maxX: 10,
        minY: 0,
        maxY: 75,
        lineBarsData: [
          LineChartBarData(
            spots: const [
              FlSpot(0, 5),
              FlSpot(1, 10),
              FlSpot(2, 9),
              FlSpot(3, 25),
              FlSpot(4, 28),
              FlSpot(5, 30),
              FlSpot(6, 40),
              FlSpot(7, 38),
              FlSpot(8, 55),
              FlSpot(9, 50),
              FlSpot(10, 65),
            ],
            color: AppColors.lightOrange,
            barWidth: 1.5,
            isStrokeCapRound: true,
            belowBarData: BarAreaData(show: true, color: AppColors.symoony),
            dotData: FlDotData(show: false),
          ),
        ],
      ),
    );
  }
}
