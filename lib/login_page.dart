import 'package:final_project/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MaterialApp(
      home: LoginPage(),
    ),
  );
}

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const PIN = '080412';

  //static const PIN_LENGTH = 6;
  var _input = ''; // state variable

  // single source of truth

  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EXO Planet (080412)',
          style: GoogleFonts.concertOne(
            textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg_power.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.4),
                    BlendMode.darken,
                  )),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.lock_outline,
                                size: 90.0, color: Colors.red.withOpacity(0.9)),
                            Text(
                              'LOGIN',
                              style: GoogleFonts.ubuntuMono(
                                textStyle: TextStyle(color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.bold,fontSize: 24),
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              'Click Here for Enter PIN to login',
                              style: GoogleFonts.ubuntuMono(
                              textStyle: TextStyle(color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.bold,fontSize: 18),
                            ),
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: Text('Password is EXO date of debut', style: GoogleFonts.ubuntuMono(
                                textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18),
                              ),),
                              content: Text('EXO is a South Korean-Chinese boy band based in Seoul. '
                                  'The band was formed by SM Entertainment in 2011 and debuted in 08 April 2012. (080412) '
                                  'The band ranked as one of the top five most influential celebrities on the Forbes Korea Power Celebrity list from 2014 '
                                  'to 2018 and have been labeled "Kings of K-pop" and the "Biggest boyband in the world" by various media outlets.',
                                style: GoogleFonts.ubuntuMono(
                                  textStyle: TextStyle(color: Colors.black.withOpacity(0.6), fontWeight: FontWeight.bold,fontSize: 18),
                                ),),
                              actions: <Widget>[
                                // TextButton(
                                //   onPressed: () => Navigator.pop(context, 'Cancel'),
                                //   child: const Text('Cancel'),
                                // ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
                          child: Text('Hint? Password', style: GoogleFonts.ubuntuMono(
                            textStyle: TextStyle(color: Colors.limeAccent, fontWeight: FontWeight.bold,fontSize: 20),
                          ),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (var i = 0; i < _input.length; i++)
                              Container(
                                margin: EdgeInsets.all(4.0),
                                width: 24.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                              ),
                            for (var i = _input.length; i < 6; i++)
                              Container(
                                margin: EdgeInsets.all(4.0),
                                width: 24.0,
                                height: 24.0,
                                decoration: BoxDecoration(
                                  color: Colors.yellowAccent,
                                  // Theme.of(context)
                                  //     .colorScheme
                                  //     .primary
                                  //     .withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                  _buildNumPad(context),
                ],
              ),
            ),
          ),
          if (_isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: CircularProgressIndicator(color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildNumPad(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          [1, 2, 3],
          [4, 5, 6],
          [7, 8, 9],
          [-2, 0, -1],
        ].map((row) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: row.map((item) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: LoginButton(
                  number: item,
                  onClick: () {
                    _handleClickButton(context, item);
                  },
                ),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }

  _handleClickButton(BuildContext context, int num) async {
    print('You pressed $num');

    if (num == -1) {
      if (_input.length > 0) {
        setState(() {
          _input = _input.substring(0, _input.length - 1);
        });
      }
    } else if (_input.length < PIN.length) {
      setState(() {
        _input = '$_input$num';
      });
    }

    if (_input.length == PIN.length) {
      if (_input == PIN) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dashboard()),
        );
      } else {
        _showOkDialog(context, 'Incorrect PIN', 'Please try again');
        setState(() {
          _input = '';
        });
      }
    }
  }

  void _showOkDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<bool?> _login(String pin) async {}
}

class LoginButton extends StatelessWidget {
  final int number;
  final Function() onClick;

  const LoginButton({
    required this.number,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: CircleBorder(),
      onTap: number == -2 ? null : onClick,
      child: Container(
        width: 75.0,
        height: 75.0,
        decoration: number < 0
            ? null
            : BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.7),
                border: Border.all(
                  width: 3.0,
                  color: Colors.red,
                ),
              ),
        child: Center(
          child: number >= 0
              ? Text(
                  '$number', // number.toString()
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              : (number == -1
                  ? Icon(
                      Icons.backspace_outlined,
                      size: 28.0,
                    )
                  : SizedBox.shrink()),
        ),
      ),
    );
  }
}
