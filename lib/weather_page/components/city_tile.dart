import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/core/constants/app_colors.dart';

class CityTile extends StatelessWidget {
  const CityTile(
      {super.key,
      required this.city,
      required this.currentWeather,
      required this.currentTemperature,
      required this.weatherImagePath});

  final String city;
  final String currentWeather;
  final String currentTemperature;
  final String weatherImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(color: AppColors.dark.withOpacity(.4), borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
        child: ListTile(
          leading: Image.asset(weatherImagePath),
          title: Text(
            city,
            style: GoogleFonts.poppins(fontSize: 14, color: AppColors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            currentWeather,
            style: GoogleFonts.poppins(fontSize: 12, color: AppColors.white, fontWeight: FontWeight.w500),
          ),
          trailing: Text(
            currentTemperature,
            style: GoogleFonts.poppins(fontSize: 30, color: AppColors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
