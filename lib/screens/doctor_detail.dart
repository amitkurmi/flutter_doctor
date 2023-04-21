

import 'package:flutter/material.dart';
import 'package:flutter_doctor/components/botton.dart';
import 'package:flutter_doctor/components/custom_appbar.dart';
import 'package:flutter_doctor/utils/config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({super.key});

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  bool isFav =false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
 appBar:CustomAppbar(
  
  apptitle: "Doctor Details",
  icon:  const FaIcon(Icons.arrow_back_ios),
  actions: [
    IconButton(
      onPressed: (){

        setState(() {
          isFav =!isFav;
        });
      },
       icon: FaIcon(isFav 
       ? Icons.favorite_rounded 
       :Icons.favorite_outline,
       color: Colors.red
       ),
       ),
  ],
 ) ,
      body: SafeArea(child: 
      Column(
         children:  <Widget>[
          //build doctor avatar and intro here
          AboutDoctor(),
          DetailBody(),
          const Spacer(),
          Padding(padding: const EdgeInsets.all(10),
          child: Button(
            width: double.infinity, 
            title: 'Book Appointment', 
            disable: false, 
            onPressed: (){
            Navigator.of(context).pushNamed('booking_page');

            }
            ),
          ),
         ],
      ),
      ),
    );
  }
}

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Column(
        children:  <Widget>[
          const CircleAvatar(
            radius: 65,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/doctor_2.jpg'),
          ),
          Config.spaceBig,
          const Text(
            'Dr Richard Tan ',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
        Config.spaceSmall,
        SizedBox(
          width: Config.widthsize * 0.75,
          child: const Text(
            'MBBS (International Medical University,Malasiya),MRCP(Royal College of Physician,United Kingdom)',
            style: TextStyle(
          color: Colors.grey,
          fontSize: 15
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
          ),
             Config.spaceSmall,
               SizedBox(
            width: Config.widthsize * 0.75,
            child: const Text(
              'Sarawak General Hospital',
              style: TextStyle(color: Colors.black, fontSize: 15,
              fontWeight: FontWeight.bold
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom:30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:   <Widget>[
              Config.spaceSmall,
              // doc exp,patience,rating
               const   DoctorInfo(),
            Config.spaceMedium,
            const Text('About Doctor',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
            Config.spaceSmall,
            const Text(
              "Dr. Richard Tan is a experienced dentist at sarawat ,He graduated from in 2003 and has been practising since then",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              softWrap: true,
              textAlign: TextAlign.justify,
              ),

        ]
        ),
    );
  }
}

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
    InfoCard(
      label: 'Patients', 
      value: '109'
      ),
   SizedBox(width: 15,),
       InfoCard(
        label: 'Experience', 
        value: '10 years'),
       SizedBox(
          width: 15,
        ),
        InfoCard(
          label: 'Rating',
           value: '4.6'),
      ],
    );
  }
}
class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return  Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Config.primaryColor,
            ),
            padding:  const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
            child: Column(
              children:  <Widget>[
                 Text(
                  label,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                ),
                 const SizedBox(height: 10,),
                  const Text('109',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
                ),
              ],
            ),
          ),
        
        );
  }
}