import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/core/constants/app_colors.dart';

class ForecastBox extends StatelessWidget {
  const ForecastBox({super.key, required this.forecastTime, required this.forecastTemperature, required this.weatherImagePath});

  final String forecastTime;
  final String forecastTemperature;
  final String weatherImagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: AppColors.dark.withOpacity(.4), borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Text(
                forecastTime,
                style: GoogleFonts.poppins(fontSize: 14, color: AppColors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60, child: Image.asset(weatherImagePath)),
              Text(
                forecastTemperature,
                style: GoogleFonts.poppins(fontSize: 12, color: AppColors.white, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
