import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_project/model_exo.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:final_project/dashboard.dart';

class bbhPage extends StatefulWidget {
  @override
  _bbhPage createState() => _bbhPage();
}

class _bbhPage extends State<bbhPage> {
  late int _position;

  List<String> img_crs =
  ["crs1.jpg",
    "crs2.jpg",
    "crs3.jpg",
    "crs4.jpg",
    "crs5.jpg",
    "crs6.gif"];

  final List<memberExo> getData = [
    memberExo(
        stagename: 'Baekhyun',
        name: 'Byun Baekhyun',
        date: '06 May 1992',
        height: 174,
        weight: 58,
        image: 'baekhyun_1.jpg',
        blood_type: 'O'),
    memberExo(
        stagename: 'Xiumin',
        name: 'Kim Minseok',
        date: '26 March 1990',
        height: 173,
        weight: 62,
        image: 'xiumin_1.jpg',
        blood_type: 'B'),
    memberExo(
        stagename: 'Suho',
        name: 'Kim Junmyeon',
        date: '22 May 1991',
        height: 173,
        weight: 58,
        image: 'suho_1.jpg',
        blood_type: 'AB'),
    memberExo(
        stagename: 'Lay',
        name: 'Zhang Yixing',
        date: '07 Oct 1991',
        height: 173,
        weight: 62,
        image: 'lay_1.jpg',
        blood_type: 'A'),
    memberExo(
        stagename: 'Chen',
        name: 'Kim Jongdae',
        date: '21 Sep 1992',
        height: 173,
        weight: 60,
        image: 'chen_1.jpg',
        blood_type: 'B'),
    memberExo(
        stagename: 'Chanyeol.',
        name: 'Park Chanyeol',
        date: '27 Nov 1992',
        height: 185,
        weight: 70,
        image: 'pcy_1.jpg',
        blood_type: 'A'),
    memberExo(
        stagename: 'D.O.',
        name: 'Do Kyungsoo',
        date: '12 Jan 1992',
        height: 172,
        weight: 57,
        image: 'do_1.jpg',
        blood_type: 'A'),
    memberExo(
        stagename: 'Kai',
        name: 'Kim Jongin',
        date: '14 Jan 1994',
        height: 182,
        weight: 62,
        image: 'kai_1.jpg',
        blood_type: 'A'),
    memberExo(
        stagename: 'Sehun',
        name: 'Oh Sehun',
        date: '12 April 1994',
        height: 183,
        weight: 66,
        image: 'sehun_1.jpg',
        blood_type: 'O'),
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
              height: 800,
            ),
            items: img_crs.map((item) {
              return GridTile(
                child: Image.asset('assets/images/carousel/1_bbh/$item', fit: BoxFit.contain, color: Colors.black.withOpacity(0.3), colorBlendMode: BlendMode.darken,),
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
            // color: Colors.white.withOpacity(0.8),
            child: Card(
              color: Colors.white.withOpacity(0.7),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
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
                          '${getData[0].name}💗',
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
                        backgroundImage: AssetImage("assets/images/avatar_image/avatarbbh.jpg"),
                      ),
                    ),
                    title: Text('${getData[0].stagename}',
                      style: GoogleFonts.fredokaOne(
                        textStyle: TextStyle(fontSize: 18, color: Colors.pink.shade300),
                      ),
                    ),
                    subtitle: Text(
                      '@baekhyunee_exo',
                      style: GoogleFonts.caveat(
                        textStyle: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 20),
                      ),
                    ),
                  ),
                  ListTile(
                  //   leading: ConstrainedBox(
                  //     constraints: BoxConstraints(
                  //      minHeight: 500, minWidth: 200,
                  //     ),
                  //     child: Image.asset("assets/images/avatar_image/avatarbbh.jpg", fit: BoxFit.fill,),
                  // ),
                    subtitle: Text(
                      'Birthdate: ${getData[0].date}\nHeight: ${getData[0].height}\nWeight: ${getData[0].weight}\nBlood type: ${getData[0].blood_type}',
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
