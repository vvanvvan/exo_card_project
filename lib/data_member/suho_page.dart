import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_project/model_exo.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:final_project/dashboard.dart';

class suhoPage extends StatefulWidget {
  @override
  _suhoPage createState() => _suhoPage();
}

class _suhoPage extends State<suhoPage> {
  late int _position;

  List<String> img_crs =
  ["crs1.jpg",
    "crs2.jpg",
    "crs3.jpg"];

  final List<memberExo> getData = [
    memberExo(stagename: 'Baekhyun', name: 'Byun Baekhyun', date: '06 May 1992', height: 174, weight: 58, image: 'baekhyun_1.jpg', blood_type: 'O'),
    memberExo(stagename: 'Xiumin', name: 'Kim Minseok', date: '26 March 1990', height: 173, weight: 62, image: 'xiumin_1.jpg', blood_type: 'B'),
    memberExo(stagename: 'Suho', name: 'Kim Junmyeon', date: '22 May 1991', height: 173, weight: 58, image: 'suho_1.jpg', blood_type: 'AB'),
    memberExo(stagename: 'Lay', name: 'Zhang Yixing', date: '07 Oct 1991', height: 173, weight: 62, image: 'lay_1.jpg', blood_type: 'A'),
    memberExo(stagename: 'Chen', name: 'Kim Jongdae', date: '21 Sep 1992', height: 173, weight: 60, image: 'chen_1.jpg', blood_type: 'B'),
    memberExo(stagename: 'Chanyeol.', name: 'Park Chanyeol', date: '27 Nov 1992', height: 185, weight: 70, image: 'pcy_1.jpg', blood_type: 'A'),
    memberExo(stagename: 'D.O.', name: 'Do Kyungsoo', date: '12 Jan 1992', height: 172, weight: 57, image: 'do_1.jpg', blood_type: 'A'),
    memberExo(stagename: 'Kai', name: 'Kim Jongin', date: '14 Jan 1994', height: 182, weight: 62, image: 'kai_1.jpg', blood_type: 'A'),
    memberExo(stagename: 'Sehun', name: 'Oh Sehun', date: '12 April 1994', height: 183, weight: 66, image: 'sehun_1.jpg', blood_type: 'O'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail of EXO member<3',style: GoogleFonts.concertOne(
          textStyle: TextStyle(color: Colors.limeAccent, fontWeight: FontWeight.bold, fontSize: 22),
        ),),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/galaxy_bg1.jpg"),
                fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken,)
              ),
            ),
            child: null /* add child content here */,
          ),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 400),
              height: 1000,
            ),
            items: img_crs.map((item) {
              return GridTile(
                child: Image.asset('assets/images/carousel/3_suho/$item', fit: BoxFit.contain, color: Colors.black.withOpacity(0.3), colorBlendMode: BlendMode.darken,),
                footer: Container(
                    padding: const EdgeInsets.all(15),
                    color: Colors.black54,
                    child: null),
              );
            }).toList(),
          ),
          Container(
            width: 500,
            height: 250,
            child: Card(
              color: Colors.white.withOpacity(0.7),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '🚀Name: ',
                          style: GoogleFonts.concertOne(
                            textStyle: TextStyle(color: Colors.purpleAccent, fontWeight: FontWeight.bold, fontSize: 22),
                          ),

                        ),
                        Text(
                          '${getData[2].name}💗',
                          style: GoogleFonts.concertOne(
                            textStyle: TextStyle(color: Colors.blueAccent.shade200, fontWeight: FontWeight.bold, fontSize: 22),
                          ),

                        ),
                      ],
                    ),

                  ),
                  ListTile(
                    leading: Container(

                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/avatar_image/avatarsuho.png"),
                      ),
                    ),
                    title: Text('${getData[2].stagename}',
                      style: GoogleFonts.fredokaOne(
                        textStyle: TextStyle(fontSize: 18, color: Colors.pink.shade300),
                      ),
                    ),
                    subtitle: Text(
                      '@kimjuncotton',
                      style: GoogleFonts.caveat(
                        textStyle: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 20),
                      ),
                    ),
                  ),
                  ListTile(
                    subtitle: Text(
                      'Birthdate: ${getData[2].date}\nHeight: ${getData[2].height}\nWeight: ${getData[2].weight}\nBlood type: ${getData[2].blood_type}',
                      style: GoogleFonts.ubuntuMono(
                        textStyle: TextStyle(color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.bold,fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
