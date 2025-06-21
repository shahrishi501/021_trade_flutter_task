import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MiniLineChart extends StatelessWidget {
  final List<double> values;
  final Color lineColor;

  const MiniLineChart({
    super.key,
    required this.values,
    this.lineColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 100,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              spots: List.generate(
                values.length,
                (index) => FlSpot(index.toDouble(), values[index]),
              ),
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
              color: lineColor,
              isStrokeCapRound: true,
              barWidth: 2,
            ),
          ],
        ),
      ),
    );
  }
}
