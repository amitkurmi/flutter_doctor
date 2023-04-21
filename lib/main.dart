import 'package:flutter/material.dart';
import 'package:flutter_doctor/screens/booking_page.dart';
import 'package:flutter_doctor/screens/doctor_detail.dart';
import 'package:flutter_doctor/screens/success_booking.dart';
import 'package:flutter_doctor/utils/config.dart';
import 'package:flutter_doctor/utils/main_layout.dart';

import 'screens/auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final navigatorKey= GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // define ThemeData here
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38,

        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),

      ),
      initialRoute: '/',
      routes: {
        // this is the initaial route of the app
        //which is auth page(login and sign up)
        '/':(context) => const AuthPage(),
        // main layout after login
        'main':(context) => const MainLayout(),
        'doc_details' :(context) => const DoctorDetail(),
         'booking_page': (context) =>  BoookingPage(),
          'success_booking' :(context) => const AppointmentBooked(),
      },
     
    );
  }
}

