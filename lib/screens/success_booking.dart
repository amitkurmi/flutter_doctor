
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../components/botton.dart';

class AppointmentBooked extends StatelessWidget {
  const AppointmentBooked({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Expanded(
            child: Lottie.asset(
              'assets/seccess.json'
              ),
            ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text('Successfully Booked',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          const Spacer(),
         Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            child: Button(
              disable: false,
               onPressed: () { 
        Navigator.of(context).pushNamed('main');
                },
                title: 'Back to Homepage', 
                width: double.infinity,

            ),
          ),
          ],
        ),
        ),
    );
  }
}