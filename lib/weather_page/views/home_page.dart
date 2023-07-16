import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/weather_page/components/city_tile.dart';
import 'package:weather_app/weather_page/components/forecast_box.dart';
import 'package:weather_app/weather_page/components/metric_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5842A9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.dashboard),
        actions: const [Icon(Icons.refresh)],
        title: const Text('Prague'),
      ),
      body: SafeArea(
        child: Align(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  'Mostly Sunny',
                  style: GoogleFonts.poppins(fontSize: 17, color: AppColors.white),
                ),
                Stack(
                  children: [
                    Text(
                      '23°',
                      style: GoogleFonts.poppins(fontSize: 120, color: AppColors.white, fontWeight: FontWeight.bold),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Opacity(
                        opacity: 0.8,
                        child: Image.asset(
                          'assets/images/cloudy.png',
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Saturday, 15th of July | 10:00AM',
                  style: GoogleFonts.poppins(fontSize: 17, color: AppColors.white),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: AppColors.dark.withOpacity(.4)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MetricBox(metric: 'Precipitation', metricValue: '30%', metricImagePath: 'assets/images/umbrella.png'),
                      MetricBox(metric: 'Humidity', metricValue: '20%', metricImagePath: 'assets/images/humidity.png'),
                      MetricBox(metric: 'Wind speed', metricValue: '9km/h', metricImagePath: 'assets/images/wind.png'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: GoogleFonts.poppins(fontSize: 17, color: AppColors.white),
                    ),
                    Text(
                      '7-Day forecast',
                      style: GoogleFonts.poppins(fontSize: 17, color: AppColors.white),
                    ),
                  ],
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ForecastBox(
                          forecastTime: '10 AM', forecastTemperature: '23°', weatherImagePath: 'assets/images/cloudy.png'),
                      ForecastBox(
                          forecastTime: '11 AM', forecastTemperature: '23°', weatherImagePath: 'assets/images/rainy-day.png'),
                      ForecastBox(
                          forecastTime: '12 AM', forecastTemperature: '23°', weatherImagePath: 'assets/images/rainy-day.png'),
                      ForecastBox(forecastTime: '1 PM', forecastTemperature: '23°', weatherImagePath: 'assets/images/rainy.png'),
                      ForecastBox(forecastTime: '2 PM', forecastTemperature: '23°', weatherImagePath: 'assets/images/rainy.png'),
                      ForecastBox(forecastTime: '3 PM', forecastTemperature: '23°', weatherImagePath: 'assets/images/storm.png'),
                      ForecastBox(forecastTime: '4 PM', forecastTemperature: '23°', weatherImagePath: 'assets/images/cloudy.png'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Other Cities',
                      style: GoogleFonts.poppins(fontSize: 17, color: AppColors.white, fontWeight: FontWeight.w500),
                    ),
                    const Icon(Icons.add, color: AppColors.white),
                  ],
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CityTile(
                          city: 'Most',
                          currentWeather: 'Raining',
                          currentTemperature: '29°',
                          weatherImagePath: 'assets/images/sun.png'),
                      CityTile(
                          city: 'Ballincolig',
                          currentWeather: 'Raining',
                          currentTemperature: '22°',
                          weatherImagePath: 'assets/images/rainy.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
