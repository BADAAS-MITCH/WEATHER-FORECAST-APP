import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additional_info.dart';
import 'package:weather_app/hourly_forecast.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title:  const  Text('WEATHER APP', 
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon  (Icons.refresh)),
          ],          
          ),

          body:  Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // main card
              children: [
              SizedBox(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  elevation: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                      child: const Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Column(
                          children: [
                            Text('300k', 
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 39,
                              ),
                            ),
                        
                            SizedBox(height: 9),
                        
                            Icon(
                              Icons.cloud, 
                              size: 100,
                            ),
                        
                            SizedBox(height: 5),
                             
                            Text('cloudy', 
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            
              const SizedBox(height: 35,),
              const Text('WEATHER FORECAST',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                      ),
                      
              const SizedBox(height: 10,),

               const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                    HourlyForecast(
                      text: '03:00',
                      icon: Icons.dark_mode,
                      temperature: '273k',
                    ),
                    HourlyForecast(
                      text: '06:00',
                      icon: Icons.dark_mode,
                      temperature: '275k',
                    ),
                    HourlyForecast(
                      text: '09:00',
                      icon: Icons.cloud,
                      temperature: '290k',
                    ),
                    HourlyForecast(
                      text: '12:00',
                      icon: Icons.sunny,
                      temperature: '300k',
                    ),
                    HourlyForecast(
                      text: '15:00',
                      icon: Icons.cloud,
                      temperature: '290k',
                    ),
                    HourlyForecast(
                      text: '18:00',
                      icon: Icons.cloudy_snowing,
                      temperature: '279k',
                    ),
                    HourlyForecast(
                      text: '21:00',
                      icon: Icons.dark_mode,
                      temperature: '270k',
                    ),
                    ],
                 ),
               ),
              
              
              const SizedBox(height: 35,),
              const Text('ADDITIONAL INFORTAMTION',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                      ),
            
              const SizedBox(height: 8,),
              
                const Row (
                  mainAxisAlignment: MainAxisAlignment.
                  spaceAround,
                  
                  children: [
                    AdditionalInfo(
                      icon: Icons.water_drop,
                      label: 'HUMIDITY',
                      text: '91',
                    ),
                    AdditionalInfo(
                      icon : Icons.air,
                      label: 'WIND VELOCITY',
                      text: '7.5',
                    ),
                    AdditionalInfo(
                      icon : Icons.beach_access_outlined,
                      label: 'PRESSURE',
                      text: '4.5',
                    ),
                  ],
                  ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Center(
                    child: Text('This is version 1.0' ,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ],
            ),
           ),
    );
  }
}




