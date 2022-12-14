import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({Key? key}) : super(key: key);

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 1;
  int bottom = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFF3E0FB), Color(0xFFE0AEF5)])),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Vazir'),
        home: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image(
                    image: AssetImage('images/$top.png'),
                    height: 200,
                    width: 390,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        top = Random().nextInt(3) + 1;
                        bottom = Random().nextInt(3) + 1;
                      });
                    },
                    child: Text(
                      'العب',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: TextButton.styleFrom(
                      side: BorderSide(color: Color(0xFF620ABD)),
                      primary: Color(0xFF620ABD),
                      minimumSize: Size(200.0, 40.0),
                      shape: StadiumBorder(),
                    ),
                  ),
                  Image(
                    image: AssetImage('images/$bottom.png'),
                    height: 200,
                    width: 390,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
