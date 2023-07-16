import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/core/constants/app_colors.dart';

class MetricBox extends StatelessWidget {
  const MetricBox({super.key, required this.metric, required this.metricValue, required this.metricImagePath});

  final String metric;
  final String metricValue;
  final String metricImagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60, child: Image.asset(metricImagePath)),
        Text(
          metricValue,
          style: GoogleFonts.poppins(fontSize: 14, color: AppColors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          metric,
          style: GoogleFonts.poppins(fontSize: 12, color: AppColors.white, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
