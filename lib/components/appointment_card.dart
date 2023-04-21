
import 'package:flutter/material.dart';
import 'package:flutter_doctor/utils/config.dart';

class AppointCard extends StatefulWidget {
  const AppointCard({super.key});

  @override
  State<AppointCard> createState() => _AppointCardState();
}

class _AppointCardState extends State<AppointCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Config.primaryColor
      ),
      child:  Material(
        color: Colors.transparent,
        child: Padding(padding: const EdgeInsets.all(20),
        child: Column(

          
          children:  <Widget>[
            Row(
              children: [
                   const CircleAvatar(
                    backgroundImage: AssetImage('assets/doctor_1.jpg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Dr Richard Tan',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Dental',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
              ],
            ),
            Config.spaceSmall,
            // sheduled info here
             const SheduledCard(),
            Config.spaceSmall,
            Row(
              children: [
           Expanded(
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red
            ),
            onPressed: () {  },
           child: const Text('Cancel',
           style: TextStyle(
            color: Colors.white
           ),
           ),
           ),
           ),
           const SizedBox(width: 10,),
             Expanded(
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                      onPressed: () {},
                      child: const Text(
                        'Completed',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),

      
          ],
        ),
        ),
        
      ),
    );
  }
}

//sheduled widget

class SheduledCard extends StatelessWidget {
  const SheduledCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        
      ),
      width: double.infinity,
      child: Padding(padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  const <Widget>[
              Icon(Icons.calendar_today,
              color: Colors.white,
              size: 15,
              ),
               SizedBox(width: 5,),
              Text(
                'Monday 11/28/22',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
                   SizedBox(
              width: 20,),
               Icon(Icons.access_alarm,
               color: Colors.white,
               size: 17,
               ),
                  SizedBox(
              width: 5,
            ),
            Flexible(
              child: Text(
                '2:00 PM',
                style: TextStyle(
                  color: Colors.white
                ),
                )
              )
            
        ],
      ),
      ),
    );
  }
}