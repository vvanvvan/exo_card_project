import 'package:final_project/data_member/bbh_page.dart';
import 'package:final_project/data_member/chen_page.dart';
import 'package:final_project/data_member/do_page.dart';
import 'package:final_project/data_member/kai_page.dart';
import 'package:final_project/data_member/lay_page.dart';
import 'package:final_project/data_member/pcy_page.dart';
import 'package:final_project/data_member/sehun_page.dart';
import 'package:final_project/data_member/suho_page.dart';
import 'package:final_project/data_member/xiumin_page.dart';
import 'package:final_project/flipcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_project/model_exo.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  // static const routeName = "/testing-page";

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = -1;

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
    List<String> img = [
      'bbhgif.gif',
      'xiumingif.gif',
      'suhogif.gif',
      'laygif.gif',
      'chengif.gif',
      'pcygif.gif',
      'dogif.gif',
      'kaigif.gif',
      'sehungif.gif',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('EXO Planet',style: GoogleFonts.concertOne(
          textStyle: TextStyle(color: Colors.limeAccent, fontWeight: FontWeight.bold, fontSize: 22),
        ),),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/galaxy_bg1.jpg"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken,),
              ),
            ),
            child: null /* add child content here */,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 480,
                      height: 620,
                      child: RawScrollbar(
                        thumbColor: Colors.white.withOpacity(0.5),
                        thickness: 10,
                        radius: Radius.circular(10),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: getData.length,
                          itemBuilder: (BuildContext context, int position) {
                            return InkWell(
                              onTap: () {
                                if (img[position] == 'bbhgif.gif') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            flipCard(position: 0)),
                                  );
                                } else if (img[position] == 'xiumingif.gif') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            flipCard(position: 1)),
                                  );
                                } else if (img[position] == 'suhogif.gif') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            flipCard(position: 2)),
                                  );
                                } else if (img[position] == 'laygif.gif') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            flipCard(position: 3)),
                                  );
                                } else if (img[position] == 'chengif.gif') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            flipCard(position: 4)),
                                  );
                                } else if (img[position] == 'pcygif.gif') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            flipCard(position: 5)),
                                  );
                                } else if (img[position] == 'dogif.gif') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            flipCard(position: 6)),
                                  );
                                } else if (img[position] == 'kaigif.gif') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            flipCard(position: 7)),
                                  );
                                } else if (img[position] == 'sehungif.gif') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            flipCard(position: 8)),
                                  );
                                }
                                print(position);
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        // Text(
                                        //   position == 8
                                        //       ? '9'
                                        //       : position == 7
                                        //           ? '8'
                                        //           : position == 6
                                        //               ? '7'
                                        //               : position == 5
                                        //                   ? '6'
                                        //                   : position == 4
                                        //                       ? '5'
                                        //                       : position == 3
                                        //                           ? '4'
                                        //                           : position ==
                                        //                                   2
                                        //                               ? '3'
                                        //                               : position ==
                                        //                                       1
                                        //                                   ? '2'
                                        //                                   : '1',
                                        //   style: TextStyle(
                                        //       fontWeight: FontWeight.bold,
                                        //       color: Colors.white),
                                        // ),
                                        Card(
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Image.asset(
                                                  'assets/images/${img[position]}',
                                                  width: 480,
                                                  height: 620,
                                                  fit: BoxFit.fill,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          margin: const EdgeInsets.only(
                                              left: 370.0, top: 583.0, ),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              buttonPage(position);
                                              print(position);
                                            },
                                            child: Text('MORE',style: GoogleFonts.roboto(
                                              textStyle: TextStyle(color: Colors.white, fontSize: 18),
                                            ),),
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.black
                                                    .withOpacity(0.8),
                                                onPrimary: Colors.white,
                                                textStyle: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        isAlwaysShown: true,
                        interactive: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void buttonPage(int index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => bbhPage()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => xiuminPage()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => suhoPage()),
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => layPage()),
      );
    } else if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => chenPage()),
      );
    } else if (index == 5) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => pcyPage()),
      );
    } else if (index == 6) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => kyungPage()),
      );
    } else if (index == 7) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => kaiPage()),
      );
    } else if (index == 8) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => sehunPage()),
      );
    }
  }
}
