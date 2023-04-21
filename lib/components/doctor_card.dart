

import 'package:flutter/material.dart';

import 'package:flutter_doctor/utils/config.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.route});

final String route;

  @override
  Widget build(BuildContext context) {
      Config().init(context);
    return Container(
   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
         height: 150,
         child:GestureDetector(
          child:  Card(
            elevation: 0,
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  width: Config.widthsize * 0.33,
                  child: Image.asset('assets/doctor_2.jpg',
                  fit: BoxFit.fill,
                  ),
                ),
                Flexible(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                 
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  <Widget>[
                    const Text('Dr Richard Tan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                      const Text(
                          'Dental',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal),
                        ),
                        const Spacer(),
                        Row(
                          children: const <Widget>[
                          Icon(Icons.star_border,color: Colors.yellow,size: 16,),
                          Spacer(flex: 1,),
                          Text('4.5'),
                          Spacer(flex: 1,),
                          Text('Reviews'),
                          Spacer(flex: 1,),
                          Text('(20)'),
                            Spacer(
                              flex: 7,
                            ),




                          ],
                        ),
                  ],
                 ),
                  ),
                  ),
              ],
            ),
          ),
          onTap: (){
            Navigator.of(context).pushNamed(route);
          },
         ),
         
    );
  }
}