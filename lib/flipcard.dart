import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:final_project/dashboard.dart';

class flipCard extends StatefulWidget {
  final int position;

  const flipCard({Key? key, required this.position}) : super(key: key);

  @override
  _flipcardState  createState() => _flipcardState ();

}

class _flipcardState extends State<flipCard> {
  late int _position;
  List<String> front = ['bbhflip_1.jpg','xiuminflip_1.jpg','suhoflip_1.jpg','layflip_1.jpg','chenflip_1.jpg','pcyflip_1.jpg','doflip_1.jpg','kaiflip_1.jpg','sehunflip_1.jpg',];
  List<String> back = ['bbhflip_2.jpg','xiuminflip_2.jpg','suhoflip_2.jpg','layflip_2.jpg','chenflip_2.jpg','pcyflip_2.jpg','doflip_2.jpg','kaiflip_2.jpg','sehunflip_2.jpg',];
  void initState() {
    super.initState();
    _position = widget.position;
    print('position $_position');
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:Text('EXO Planet',style: GoogleFonts.concertOne(
        textStyle: TextStyle(color: Colors.limeAccent, fontWeight: FontWeight.bold, fontSize: 22),
      ),),
        backgroundColor: Colors.black,),
      body: Stack(
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
          Center(
            child: FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front: Image.asset(
                'assets/images/${front[_position]}',
                width: 430,
                height: 570,
                fit: BoxFit.contain,

              ),
              back:  Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  'assets/images/${back[_position]}',
                  width: 430,
                  height: 570,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
